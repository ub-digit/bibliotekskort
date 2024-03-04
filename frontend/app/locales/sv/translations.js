export default {
  "home": {
    "headers": {
      "logoPrintUrl": '/gu_logo_sv_high.png',
      "level1": 'Göteborgs universitetsbibliotek',
      "level2": 'Ansök om bibliotekskort',
    },
  },
  "components": {

  },

  "application": {
    "title": "Ansök om bibliotekskort - Göteborgs universitetsbibliotek"

  },
  "patron": {
    "header": 'Ansök om bibliotekskort',
    "sub_header": 'Du som har fast bostad i Sverige och är över 15 år kan få ett bibliotekskort. För studenter och anställda vid Göteborgs universitet fungerar GU-kortet som bibliotekskort.',

    "form_error_header": 'Formuläret innehåller felaktigheter.',
    "personalnumber": 'Personnummer',
    "personalnumber_help_block": '12 siffror utan bindestreck (ÅÅÅÅMMDDNNNN)',
    "firstname": 'Förnamn',
    "surname": 'Efternamn',
    "address1_header": "Adress",
    "address": 'Gatuadress',
    "zipcode": 'Postnummer',
    "city": 'Ort',
    "smsalertnumber": 'Svenskt mobilnummer',
    'phonenumber': 'Telefonnummer',
    "phone_help_block": 'Ange endast siffror enligt formatet 07XXXXXXXX',
    'email': 'E-postadress',
    'message_header': 'Meddelanden från biblioteket',
    'message_pref': 'Hur vill du få påminnelser och aviseringar?',
    'lang': 'Språk i påminnelser och aviseringar',
    'accept_text_help_block': "Jag har tagit del av <a target='_blank' href='https://www.ub.gu.se/sv/regler-for-anvandning-av-goteborgs-universitetsbibliotek'>Regler för användning av Göteborgs universitetsbibliotek</a> och förbinder mig att följa dem.",
    'pul_link': "<a href='https://www.gu.se/om-webbplatsen/behandling-av-personuppgifter' target='_blank'>Om hantering av personuppgifter</a>",
    "submit": 'Skicka ansökan',
    "category": "Användarkategori",
    "pin": "PIN-kod (4 siffror)",
    "sv": "Svenska",
    "en": "Engelska",
    'optionally': 'valfritt'
  },

  "error_codes": {
    "MISSING_PERSONALNUMBER": 'Personnummer är obligatoriskt',
    "MISSING_CATEGORYCODE": 'Användarkategori är obligatoriskt',
    "MISSING_PIN": "PIN-kod är obligatoriskt",
    "MISSING_FIRSTNAME": 'Förnamn är obligatoriskt',
    "MISSING_SURNAME": 'Efternamn är obligatoriskt',
    "MISSING_ADDRESS": 'Gatuadress är obligatoriskt',
    "MISSING_ZIPCODE": 'Postnummer är obligatoriskt',
    "MISSING_CITY": 'Ort är obligatoriskt',
    "MISSING_LANG": 'Språk är obligatoriskt',
    "MISSING_MESSAGING_FORMAT": 'Meddelandeformat är obligatoriskt',
    "MISSING_ACCEPT_TEXT": "Du måste acceptera reglerna",
    "MISSING_SMSALERTNUMBER": 'Mobilnummer är obligatoriskt',
    "MISFORMATTED_SMSALERTNUMBER": "Felaktigt mobilnummer",
    "MISSING_EMAIL": 'E-postadress är obligatoriskt',

    "INVALID_CATEGORYCODE": 'Ogiltig låntagarkategori',
    "INVALID_PIN": "Ogiltig PIN-kod",

    "PERSONALNUMBER_FORMAT_ERROR": 'Felaktigt personnummer',
    "SMSALERTNUMBER_FORMAT_ERROR": 'Felaktigt mobilnummer',
    "EMAIL_FORMAT_ERROR": 'Felaktig e-postadress',
    "LANG_FORMAT_ERROR": 'Felaktigt språk',
    "MESSAGING_FORMAT_FORMAT_ERROR": 'Felaktigt meddelandeformat',

    "PERSONALNUMBER_EXISTS": 'Detta personnummer är redan registrerat',
  },

  "confirm": {
    "header": 'Nu kan du hämta ditt bibliotekskort!',
    "extra_info": 'Hämta ut bibliotekskortet på något av <a target="_blank" href="http://www.ub.gu.se/%3C-en,sv%3E/bibliotek/">våra bibliotek</a>. Ta med giltig legitimation.',
    "extra_info_2": 'När du beställer material lägger biblioteket det på en avhämtningshylla i närheten av informationsdisken. Kontakta biblioteket om du istället vill hämta dina beställningar i informationsdisken.',
    "contact_library_link": '<a target="_blank" href="http://www.ub.gu.se/%3C-en,sv%3E/kontakta/">Kontakta biblioteket</a>'
  }

};
