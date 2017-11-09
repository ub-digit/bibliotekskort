class CategoryCode
  def self.all
    [
     {id: "EX", label_sv: "Allmänhet, bosatt i Sverige", label_en: "Member of the public, living in Sweden"},
     {id: "UX", label_sv: "Allmänhet, bosatt utomlands", label_en: "Member of the public, living abroad"},
     {id: "SR", label_sv: "Student vid annan högskola än GU", label_en: "Student at another university"},
     {id: "FR", label_sv: "Forskare vid annan högskola än GU", label_en: "Researcher at another university"},
     {id: "SU", label_sv: "Internationell student vid GU", label_en: "International student at GU"},
     {id: "FX", label_sv: "Internationell gästforskare vid GU", label_en: "International visiting researcher at GU"},
     {id: "SE", label_sv: "Student vid Handelshögskolan", label_en: "Student: School of Business, Economics and Law"},
     {id: "SH", label_sv: "Student vid Humanistiska fakulteten", label_en: "Student: Faculty of Arts"},
     {id: "SA", label_sv: "Student vid Högskolan för scen och musik", label_en: "Student: Academy of Music and Drama"},
     {id: "SI", label_sv: "Student vid IT-fakulteten", label_en: "Student: IT Faculty"},
     {id: "SK", label_sv: "Student vid Konstnärliga fakulteten", label_en: "Student: Faculty of Fine, Applied and Performing Arts"},
     {id: "SL", label_sv: "Student vid Utbildningsvetenskapliga fakulteten", label_en: "Student: Faculty of Education"},
     {id: "SM", label_sv: "Student vid Sahlgrenska akademin", label_en: "Student: Sahlgrenska Academy"},
     {id: "SN", label_sv: "Student vid Naturvetenskapliga fakulteten", label_en: "Student: Faculty of Science"},
     {id: "SS", label_sv: "Student vid Samhällsvetenskapliga fakulteten", label_en: "Student: Faculty of Social Sciences"},
     {id: "FE", label_sv: "Forskare vid Handelshögskolan", label_en: "Researcher: School of Business, Economics and Law"},
     {id: "FH", label_sv: "Forskare vid Humanistiska fakulteten", label_en: "Researcher: Faculty of Arts"},
     {id: "FA", label_sv: "Forskare vid Högskolan för scen och musik", label_en: "Researcher: Academy of Music and Drama"},
     {id: "FI", label_sv: "Forskare vid IT-fakulteten", label_en: "Researcher: IT Faculty"},
     {id: "FK", label_sv: "Forskare vid Konstnärliga fakulteten", label_en: "Researcher: Faculty of Fine, Applied and Performing Arts"},
     {id: "FL", label_sv: "Forskare vid Utbildningsvetenskapliga fakulteten", label_en: "Researcher: Faculty of Education"},
     {id: "FM", label_sv: "Forskare vid Sahlgrenska akademin", label_en: "Researcher: Sahlgrenska Academy"},
     {id: "FT", label_sv: "Forskare vid Sahlgrenska akademin (Odontologi)", label_en: "Researcher: Sahlgrenska Academy (Odontology)"},
     {id: "FV", label_sv: "Forskare vid Sahlgrenska akademin (Vårdvetenskap)", label_en: "Researcher: Sahlgrenska Academy (Health and Care Sciences)"},
     {id: "FN", label_sv: "Forskare vid Naturvetenskapliga fakulteten", label_en: "Researcher: Faculty of Science"},
     {id: "FS", label_sv: "Forskare vid Samhällsvetenskapliga fakulteten", label_en: "Researcher: Faculty of Social Sciences"},
     {id: "GU", label_sv: "Personal vid GU", label_en: "Staff at GU"}
    ]
  end

  def self.validate category
    self.all.map{|code| code[:id]}.include?(category)
  end
end
