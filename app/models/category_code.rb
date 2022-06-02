class CategoryCode
  def self.all
    [
     {id: "EX", label_sv: "Allmänhet, bosatt i Sverige", label_en: "Member of the public, living in Sweden"},
     {id: "UX", label_sv: "Allmänhet, bosatt utomlands", label_en: "Member of the public, living abroad"},
     {id: "SR", label_sv: "Student vid annan högskola än GU", label_en: "Student at another university"},
     {id: "FR", label_sv: "Forskare vid annan högskola än GU", label_en: "Researcher at another university"},
     {id: "SU", label_sv: "Internationell student vid GU", label_en: "International student at GU"},
     {id: "FX", label_sv: "Internationell gästforskare vid GU", label_en: "International visiting researcher at GU"},
     {id: "S",  label_sv: "Student vid GU", label_en: "Student at GU"},
     {id: "FI", label_sv: "Forskare vid IT-fakulteten", label_en: "Researcher: IT Faculty"},
     {id: "GU", label_sv: "Personal vid GU", label_en: "Staff at GU"}
    ]
  end

  def self.validate category
    self.all.map{|code| code[:id]}.include?(category)
  end
end
