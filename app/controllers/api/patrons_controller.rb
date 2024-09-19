class Api::PatronsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    personalnumber = params[:patron][:personalnumber]
    categorycode = params[:patron][:categorycode]
    pin = params[:patron][:pin]
    surname = params[:patron][:surname]
    firstname = params[:patron][:firstname]
    address = params[:patron][:address]
    zipcode = params[:patron][:zipcode]
    city = params[:patron][:city]
    phone = params[:patron][:smsalertnumber]
    smsalertnumber = params[:patron][:smsalertnumber]
    email = params[:patron][:email]
    lang = params[:patron][:lang]
    messaging_format = params[:patron][:messaging_format]
    accept_text = params[:patron][:accept_text]

    error_list = Array.new
    error_list.push({field: "personalnumber", code: "MISSING_PERSONALNUMBER", detail: "personalnumber is missing."}) if personalnumber.blank?
    error_list.push({field: "categorycode", code: "MISSING_CATEGORYCODE", detail: "categorycode is missing."}) if categorycode.blank?
    error_list.push({field: "pin", code: "MISSING_PIN", detail: "pin is missing."}) if pin.blank? && CategoryCode.requires_pin(categorycode)
    error_list.push({field: "surname", code: "MISSING_SURNAME", detail: "surname is missing."}) if surname.blank?
    error_list.push({field: "firstname", code: "MISSING_FIRSTNAME", detail: "firstname is missing."}) if firstname.blank?
    if APP_CONFIG['address_mandatory']
      error_list.push({field: "address", code: "MISSING_ADDRESS", detail: "address is missing."}) if address.blank?
      error_list.push({field: "zipcode", code: "MISSING_ZIPCODE", detail: "zipcode is missing."}) if zipcode.blank?
      error_list.push({field: "city", code: "MISSING_CITY", detail: "city is missing."}) if city.blank?
    end
    error_list.push({field: "lang", code: "MISSING_LANG", detail: "lang is missing."}) if lang.blank?
    error_list.push({field: "messaging_format", code: "MISSING_MESSAGING_FORMAT", detail: "messaging_format is missing."}) if messaging_format.blank?
    error_list.push({field: "accept_text", code: "MISSING_ACCEPT_TEXT", detail: "accept_text is missing."}) if accept_text.blank?

    error_list.push({field: "personalnumber", code: "PERSONALNUMBER_FORMAT_ERROR", detail: "personalnumber format error."}) if !Patron.validate_personalnumber(personalnumber)
    error_list.push({field: "email", code: "EMAIL_FORMAT_ERROR", detail: "email format error."}) if !Patron.validate_email(email)
    error_list.push({field: "lang", code: "LANG_FORMAT_ERROR", detail: "lang format error."}) if !Patron.validate_lang(lang)
    error_list.push({field: "messaging_format", code: "MESSAGING_FORMAT_FORMAT_ERROR", detail: "messaging format format error."}) if !validate_messaging_format(messaging_format)

    error_list.push({field: "categorycode", code: "INVALID_CATEGORYCODE", detail: "invalid category code."}) if !CategoryCode.validate(categorycode)
    error_list.push({field: "pin", code: "INVALID_PIN", detail: "invalid pin."}) if !Patron.validate_pin(pin) && CategoryCode.requires_pin(categorycode)

    if messaging_format.eql?("sms")
      if smsalertnumber.blank?
        error_list.push({field: "smsalertnumber_blank", code: "MISSING_SMSALERTNUMBER", detail: "smsalertnumber is missing."})
      else
        error_list.push({field: "smsalertnumber", code: "MISFORMATTED_SMSALERTNUMBER", detail: "smsalertnumber is misformatted."}) if !Patron.validate_phonenumber(smsalertnumber)
      end
    elsif messaging_format.eql?("email")
      error_list.push({field: "email", code: "MISSING_EMAIL", detail: "email is missing."}) if email.blank?
      smsalertnumber = nil
    elsif messaging_format.eql?("sms_email")
      if smsalertnumber.blank?
        error_list.push({field: "smsalertnumber_blank", code: "MISSING_SMSALERTNUMBER", detail: "smsalertnumber is missing."})
      else
        error_list.push({field: "smsalertnumber", code: "MISFORMATTED_SMSALERTNUMBER", detail: "smsalertnumber is misformatted."}) if !Patron.validate_phonenumber(smsalertnumber)
      end
      error_list.push({field: "email", code: "MISSING_EMAIL", detail: "email is missing."}) if email.blank?
    else
      messaging_format = nil
    end

    error_list.push({field: "personalnumber", code: "PERSONALNUMBER_EXISTS", detail: "personalnumber already exists."}) if Patron.exists?(personalnumber)


    if error_list.present?
      error_msg(ErrorCodes::UNPROCESSABLE_ENTITY, "Invalid parameters.", error_list)
      render_json
      return
    end


    parameter_list = {
      personalnumber: personalnumber,
      categorycode: categorycode,
      branchcode: "44",
      debarments: "wr",
      surname: surname,
      firstname: firstname,
      address: address,
      zipcode: zipcode,
      city: city,
      phone: phone,
      smsalertnumber: smsalertnumber,
      email: email,
      lang: lang,
      messaging_format: messaging_format,
      accept_text: accept_text,
      pin: pin
    }

    res = Patron.add(parameter_list)
    if res[:code] == 201
      @response[:patron] = {id: 1234} #ember data requires an id to generate success.
      render_json(201)
      return
    else
      error_msg(ErrorCodes::INTERNAL_SERVER_ERROR, "General error")
      render_json
      return
    end
  end

private
  def validate_messaging_format messaging_format
    return true if messaging_format.blank?
    return ["sms", "email", "sms_email"].include?(messaging_format)
  end
end
