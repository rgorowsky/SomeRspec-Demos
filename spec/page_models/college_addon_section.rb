class CollegeSection < SitePrism::Section
  element :test_player_bubble, "input", id: "persona_id_sxxxxxx"
  element :info_page, "form", id: "myform"  
  element :sale_item_selection, "input", id: "form_result_xxxxxxxxxxasdfasd"
  element :gender_selection, "input", id: "form_result_asdfasdfasdfasd"
  element :orphan_first_name, "input", id: "form_result_adsfasdfasdfasdfasdgsag"
  element :orphan_last_name, "input", id: "form_result_fadsffadfafsdaffdsa"
  element :legacy_gender_selection, "input", id: "form_result_adshnsf5hhsdfg"
  element :orphan_email, "input", id: "form_result_20711026_email"
  element :legacy_validation, "p", class: "pl-heading--medium", text: "Do you want to compete in sports?"
end
