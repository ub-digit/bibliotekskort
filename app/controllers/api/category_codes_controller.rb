class Api::CategoryCodesController < Api::ApiController

  def index
    category_codes = CategoryCode.all
    @response[:category_codes] = [{id: "0", label_sv: "Välj ...", label_en: "Choose ..."}] + category_codes
    render_json
  end
end