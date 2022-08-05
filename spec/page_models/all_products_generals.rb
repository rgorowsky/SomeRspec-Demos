# require "./spec/page_models/sales_channels_ncsa_section.rb"
require "./spec/page_models/super_medical_product.rb"
# require "./spec/page_models/sales_channels_regsaver_section.rb"
# require "./spec/page_models/sales_channels_four_addons_section.rb"

class SuperProducts < SitePrism::Page
  set_url "https://janedoe#{SeleniumTest.monolith_site}/register/form/{form_number}"

  element :test_reg_banner, "h2.registration-header-survey-name"
  element :registration_page, "#who_are_you_registering_page"
  element :se_bar_sign_in, "a", id: "nb-sign-in-link"
  element :continue_button, "input.button-large"
  element :dob_month_selection, "option", text: "January"
  element :dob_day_input, "[id*=day]"
  element :dob_day_selection, "option", text: "31", :match => :first
  element :dob_year_input, "[id*=year]"
  element :general_dob_year_selection, "option", text: "2000" 
  element :minor_dob_year_selection, "option", text: "2007"
  element :orphan_select, "input", id: "persona_id_new_orphan"
  element :filter_four_reg_dob, "option", text: "2010"
  element :review_page_id, "span", text: "Review"
  element :addon_validation, "#panelTwo"
  element :shopping_cart, "span.page-title"
  element :proceed_to_checkout, "span.se-button__content"
  element :checkout_screen, "div.page-title"
  element :checkout_container, "div.total-sales-container--dynamic"

  section :college_section, CollegeSection, "div#siteContainer2"
  section :med_section, MedProductSection, "div#siteContainer2"
  section :reg_section, RegSection, "div#siteContainer2"
  section :all_addons_section, AllAddonsSection, "div#siteContainer2"
end
