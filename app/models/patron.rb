class Patron
  def self.add(parameter_list)
    config = get_config
    url = "#{config[:base_url]}/members/create_tmp"
    response = RestClient.post(url, parameter_list.merge({userid: config[:user], password: config[:password]}))
    if response && (response.code == 200 || response.code == 201)
      return {code: 201, msg: "Success"}
    else
      return {code: 500, msg: "General error"}
    end
  #rescue => error
  #  return {code: 500, msg: "General error"}
  end

  def self.exists?(personalnumber)
    config = get_config
    params = {userid: config[:user], password: config[:password], personalnumber: personalnumber}.to_query
    url = "#{config[:base_url]}/members/check?#{params}"
    response = RestClient.get(url)
    if (response && response.code == 200)
      xml = Nokogiri::XML(response.body).remove_namespaces!
      return !(xml.search('//response/uniq').text.present? && xml.search('//response/uniq').text == "true")
    else
      return false
    end
  #rescue => error
  #  return false
  end

  def self.validate_personalnumber personalnumber
    return true if personalnumber.blank?
    return !!personalnumber.match(/^\d{12}$/)
  end

  def self.validate_phonenumber phonenumber
    return true if phonenumber.blank?
    return !!phonenumber.match(/^0\d+$/)
  end

  def self.validate_email email
    return true if email.blank?
    return !!email.match(/^.+@.+\..+$/)
  end

  def self.validate_lang lang
    return true if lang.blank?
    return lang.eql?("en") || lang.eql?("sv-SE")
  end

  def self.get_config
    {
      base_url: APP_CONFIG['koha']['base_url'],
      user: APP_CONFIG['koha']['user'],
      password: APP_CONFIG['koha']['password']
    }
  end
end
