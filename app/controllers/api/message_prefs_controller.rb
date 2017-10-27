class Api::MessagePrefsController < Api::ApiController

  def index
    @response[:message_prefs] = [
      {id: "email", label_sv: 'Epost', label_en: 'Epost - en'},
      {id: "sms_email", label_sv: 'Sms och epost', label_en: 'Sms och epost - en'},
      {id: "sms", label_sv: 'Sms', label_en: 'Sms - en'},
      {id: "paper", label_sv: 'Brev till adress', label_en: 'Brev till adress - en'},
    ]
    render_json
  end
end
