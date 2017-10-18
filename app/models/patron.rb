class Patron

  def personal_number_exist?
    # TBD
  end

  def self.add(parameter_list)
    base_url = APP_CONFIG['koha']['base_url']
    user =  APP_CONFIG['koha']['user']
    password =  APP_CONFIG['koha']['password']

    url = "#{base_url}/members/create"
    response = RestClient.post(url, parameter_list.merge({userid: user, password: password}))
    if response && (response.code == 200 || response.code == 201)
      return {code: 201, msg: "Success"}
    else
      return {code: 500, msg: "General error"}
    end
  #rescue => error
    #return {code: 500, msg: "General error"}
  end

end
