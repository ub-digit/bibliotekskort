class Api::MessagePrefsController < Api::ApiController

  def index
    @response[:message_prefs] = [
      {id: "email", label_sv: 'E-post', label_en: 'E-mail'},
      {id: "sms_email", label_sv: 'E-post och SMS', label_en: 'E-mail and SMS'},
      {id: "sms", label_sv: 'SMS', label_en: 'SMS'},
    ]
    render_json
  end
end
