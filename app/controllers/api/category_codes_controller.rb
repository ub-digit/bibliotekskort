class Api::CategoryCodesController < Api::ApiController

  def index
    @response[:category_codes] = [
      {id: "0", label_sv: "Choose ...", label_en: "Choose ..."},
     {id: "SE", label_sv: "Student - Handelshögskolan", label_en: "Student - Handelshögskolan"},
     {id: "SH", label_sv: "Student - humaniora", label_en: "Student - humaniora"},
     {id: "SA", label_sv: "Student - Scen och musik (HSM)", label_en: "Student - Scen och musik (HSM)"},
     {id: "SI", label_sv: "Student - IT-universitetet", label_en: "Student - IT-universitetet"},
     {id: "SK", label_sv: "Student - konst", label_en: "Student - konst"},
     {id: "SL", label_sv: "Student - Pedagogen", label_en: "Student - Pedagogen"},
     {id: "SM", label_sv: "Student - Sahlgrenska akademin", label_en: "Student - Sahlgrenska akademin"},
     {id: "SN", label_sv: "Student - naturvetenskap", label_en: "Student - naturvetenskap"},
     {id: "SR", label_sv: "Student - annan högskola", label_en: "Student - annan högskola"},
     {id: "SS", label_sv: "Student - samhällsvetenskap", label_en: "Student - samhällsvetenskap"},
     {id: "SU", label_sv: "Student - utländsk", label_en: "Student - utländsk"},
     {id: "FE", label_sv: "Forskare - Handelshögskolan", label_en: "Forskare - Handelshögskolan"},
     {id: "FH", label_sv: "Forskare - humaniora", label_en: "Forskare - humaniora"},
     {id: "FA", label_sv: "Forskare - Scen och musik (HSM)", label_en: "Forskare - Scen och musik (HSM)"},
     {id: "FI", label_sv: "Forskare - IT-universitetet", label_en: "Forskare - IT-universitetet"},
     {id: "FK", label_sv: "Forskare - konst", label_en: "Forskare - konst"},
     {id: "FL", label_sv: "Forskare - Pedagogen", label_en: "Forskare - Pedagogen"},
     {id: "FM", label_sv: "Forskare - medicin", label_en: "Forskare - medicin"},
     {id: "FN", label_sv: "Forskare - naturvetenskap", label_en: "Forskare - naturvetenskap"},
     {id: "FR", label_sv: "Forskare - annan högskola än GU", label_en: "Forskare - annan högskola än GU"},
     {id: "FS", label_sv: "Forskare - samhällsvetenskap", label_en: "Forskare - samhällsvetenskap"},
     {id: "FT", label_sv: "Forskare - odontologi", label_en: "Forskare - odontologi"},
     {id: "FV", label_sv: "Forskare - vårdvetenskap", label_en: "Forskare - vårdvetenskap"},
     {id: "FX", label_sv: "Forskare - utländsk gästforskare", label_en: "Forskare - utländsk gästforskare"},
     {id: "GU", label_sv: "Personal - GU", label_en: "Personal - GU"},
     {id: "EX", label_sv: "Externa låntagare bosatta i Sverige", label_en: "Externa låntagare bosatta i Sverige"},
     {id: "UX", label_sv: "Externa låntagare bosatta i utlandet", label_en: "Externa låntagare bosatta i utlandet"}
    ]
    render_json
  end
end