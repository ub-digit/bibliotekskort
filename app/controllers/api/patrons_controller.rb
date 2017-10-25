class Api::PatronsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    personalnumber = params[:patron][:personalnumber]
    categorycode = params[:patron][:categorycode]
    #branchcode = params[:patron][:branchcode]
    branchcode = "44"
    surname = params[:patron][:surname]
    firstname = params[:patron][:firstname]
    address = params[:patron][:address]
    zipcode = params[:patron][:zipcode]
    city = params[:patron][:city]
    b_address = params[:patron][:b_address]
    b_city = params[:patron][:b_city]
    b_zipcode = params[:patron][:b_zipcode]
    phone = params[:patron][:phone]
    mobile = params[:patron][:mobile]
    smsalertnumber = params[:patron][:smsalertnumber]
    email = params[:patron][:email]
    lang = params[:patron][:lang]
    accept_text = params[:patron][:accept_text]

    error_list = Array.new
    error_list.push({field: "personalnumber", code: "MISSING_PERSONALNUMBER", detail: "personalnumber is missing."}) if personalnumber.blank?
    error_list.push({field: "categorycode", code: "MISSING_CATEGORYCODE", detail: "categorycode is missing."}) if categorycode.blank?
    error_list.push({field: "surname", code: "MISSING_SURNAME", detail: "surname is missing."}) if surname.blank?
    error_list.push({field: "firstname", code: "MISSING_FIRSTNAME", detail: "firstname is missing."}) if firstname.blank?
    error_list.push({field: "address", code: "MISSING_ADDRESS", detail: "address is missing."}) if address.blank?
    error_list.push({field: "zipcode", code: "MISSING_ZIPCODE", detail: "zipcode is missing."}) if zipcode.blank?
    error_list.push({field: "city", code: "MISSING_CITY", detail: "city is missing."}) if city.blank?
    error_list.push({field: "lang", code: "MISSING_LANG", detail: "lang is missing."}) if lang.blank?
    error_list.push({field: "accept_text", code: "MISSING_ACCEPT_TEXT", detail: "accept_text is missing."}) if accept_text.blank?

    error_list.push({field: "personalnumber", code: "PERSONALNUMBER_FORMAT_ERROR", detail: "personalnumber format error."}) if !Patron.validate_personalnumber(personalnumber)
    error_list.push({field: "phone", code: "PHONE_FORMAT_ERROR", detail: "phone format error."}) if !Patron.validate_phonenumber(phone)
    error_list.push({field: "mobile", code: "MOBILE_FORMAT_ERROR", detail: "mobile format error."}) if !Patron.validate_phonenumber(mobile)
    error_list.push({field: "smsalertnumber", code: "SMSALERTNUMBER_FORMAT_ERROR", detail: "smsalertnumber format error."}) if !Patron.validate_phonenumber(smsalertnumber)
    error_list.push({field: "email", code: "EMAIL_FORMAT_ERROR", detail: "email format error."}) if !Patron.validate_email(email)
    error_list.push({field: "lang", code: "LANG_FORMAT_ERROR", detail: "lang format error."}) if !Patron.validate_lang(lang)

    error_list.push({field: "personalnumber", code: "PERSONALNUMBER_EXISTS", detail: "personalnumber already exists."}) if Patron.exists?(personalnumber)

    if error_list.present?
      error_msg(ErrorCodes::UNPROCESSABLE_ENTITY, "Invalid parameters.", error_list)
      render_json
      return
    end

    parameter_list = {
      personalnumber: personalnumber,
      categorycode: categorycode,
      branchcode: branchcode,
      surname: surname,
      firstname: firstname,
      address: address,
      zipcode: zipcode,
      city: city,
      B_address: b_address,
      B_city: b_city,
      B_zipcode: b_zipcode,
      phone: phone,
      mobile: mobile,
      smsalertnumber: smsalertnumber,
      email: email,
      lang: lang,
      accept_text: accept_text
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

end