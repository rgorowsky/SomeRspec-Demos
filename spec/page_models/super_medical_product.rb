class MedProductSection < SitePrism::Section
  element :participant_selection, "input", id: "persona_id_bloppitysomething"
  element :pagethree_header, "span", text: "Information", :match => :first
  element :med_coverage, "input", id: "form_result_blablabloobloo"
  element :gender_selection, "input", id: "form_result_deedoofoobar"
end
