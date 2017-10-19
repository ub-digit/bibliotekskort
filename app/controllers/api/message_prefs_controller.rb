class Api::MessagePrefsController < Api::ApiController

  def index
    @response[:message_prefs] = [
      {id: "1", label_sv: 'Epost', label_en: 'Epost'},
      {id: "2", label_sv: 'Sms och epost', label_en: 'Sms och epost'},
      {id: "3", label_sv: 'Sms', label_en: 'Sms'},
      {id: "4", label_sv: 'Brev till adress', label_en: 'Brev till adress'},
    ]
    render_json
  end
end
