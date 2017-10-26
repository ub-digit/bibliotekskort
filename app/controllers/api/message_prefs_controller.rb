class Api::MessagePrefsController < Api::ApiController

  def index
    @response[:message_prefs] = [
      {id: "1", label_sv: 'Epost', label_en: 'Epost - en'},
      {id: "2", label_sv: 'Sms och epost', label_en: 'Sms och epost - en'},
      {id: "3", label_sv: 'Sms', label_en: 'Sms - en'},
      {id: "4", label_sv: 'Brev till adress', label_en: 'Brev till adress - en'},
    ]
    render_json
  end
end
