export default {
  "home": {
    "headers": {
      "logoPrintUrl": '/gu_logo_en_high.png',
      "level1": 'Gothenburg University Library',
      "level2": 'Apply for a library card',
    },
  },
  "components": {

  },

  "application": {
    "title": "Apply for a library card - Gothenburg University Library"

  },
  "patron": {
    "header": 'Apply for a library card',
    "sub_header": 'Anyone above 15 years of age with a permanent residence in Sweden can get a library card. Students and staff at the university use their GU card as a library card.',

    "form_error_header": 'The form contains errors.',
    "personalnumber": 'Swedish personal number',
    "personalnumber_help_block": '12 digits without dashes (YYYYMMDDNNNN)',
    "firstname": 'First name',
    "surname": 'Last name',
    "address1_header": "Address",
    "address": 'Street address',
    "zipcode": 'Postal code',
    "city": 'City',
    "smsalertnumber": 'Mobile number',
    'phonenumber': 'Telephone number',
    "phone_help_block": 'Only digits',
    'email': 'E-mail address',
    'message_header': 'Messages from the library',
    'message_pref': 'How would you like reminders and notifications?',
    'lang': 'Language in reminders and notifications',
    'accept_text_help_block': "I confirm that I am familiar with the  <a target='_blank' href='http://www.ub.gu.se/%3C-sv,en%3E/lana/'>Rules for the use of Gothenburg University Library</a> and undertake to follow these rules.",
    'pul_link': "<a href='http://www.ub.gu.se/(en)/lana/pul.pdf' target='_blank'>About the processing of personal data (pdf)</a>",
    "submit": 'Send application',
    "category": "User category",
    "sv": "Swedish",
    "en": "English",
    'optionally': 'optional'
  },

  "error_codes": {
    "MISSING_PERSONALNUMBER": 'Swedish personal number is mandatory',
    "MISSING_CATEGORYCODE": 'User category is mandatory',
    "MISSING_FIRSTNAME": 'First name is mandatory',
    "MISSING_SURNAME": 'Last name is mandatory',
    "MISSING_ADDRESS": 'Street address is mandatory',
    "MISSING_ZIPCODE": 'Postal code is mandatory',
    "MISSING_CITY": 'City is mandatory',
    "MISSING_LANG": 'Lanuage is mandatory',
    "MISSING_MESSAGING_FORMAT": 'Message format is mandatory',
    "MISSING_ACCEPT_TEXT": "You have to accept the library's rules",
    "MISSING_SMSALERTNUMBER": 'Mobile number is mandatory',
    "MISSING_EMAIL": 'E-mail address is mandatory',

    "INVALID_CATEGORYCODE": 'Invalid user category',

    "PERSONALNUMBER_FORMAT_ERROR": 'Invalid or incorrect personal number',
    "SMSALERTNUMBER_FORMAT_ERROR": 'Incorrect mobile phone number',
    "EMAIL_FORMAT_ERROR": 'Incorrect e-mail address',
    "LANG_FORMAT_ERROR": 'Incorrect language',
    "MESSAGING_FORMAT_FORMAT_ERROR": 'Invalid message format',

    "PERSONALNUMBER_EXISTS": 'This personal number has already been registered',
  },

  "confirm": {
    "header": 'Your application has been sent!',
    "extra_info": 'Your library card can be picked up at any of <a target="_blank" href="http://www.ub.gu.se/%3C-sv,en%3E/bibliotek/">our libraries</a>. Bring valid identification. If you are a distance student at the University of Gothenburg you can contact the library to have your card sent to your address.',
    "extra_info_2": 'When you request material, library staff will place it on open shelves with your name visible. Contact the library if you would like to pick up your reservations at the information desk instead.',
    "contact_library_link": '<a target="_blank" href="http://www.ub.gu.se/%3C-sv,en%3E/kontakta/">Contact the library</a>'
  }

};
