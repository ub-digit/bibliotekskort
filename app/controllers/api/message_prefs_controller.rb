class Api::MessagePrefsController < Api::ApiController

  def index
    @response[:message_prefs] = [
      {id: "1", label_sv: 'label_sv_content_1', label_en: 'label_en_content_1'},
      {id: "2", label_sv: 'label_sv_content_2', label_en: 'label_en_content_2'}
    ]
    render_json
  end
end
