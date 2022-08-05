describe "Showing 4 addons", type: :feature, service: "custom_service_tag" do
  subject(:super_products) { SuperProducts.new }
  subject(:seb_signup_page) { SELogin.new }
  let(:form_number) { "848adfadsfafa624247" }
  let(:shadowroot) { super_products.evaluate_script("arguments[0].shadowRoot", super_products.reg_section.addon_container.find("#foobar-element", visible: false)) }

  context "for a boy in ncsa age in baseball reg" do
    it "shows regsaver, medsaver, ncsa, pitchtracker" do
      super_products.load(form_number: form_number)
      expect(super_products.test_reg_banner).to be_visible
      super_products.seb_bar_sign_in.click
      expect(se_signup_page.sign_up_header).to have_content("Welcome")
      special_admin_login
      super_products.continue_button.click
      expect(super_products.reg_page).to be_visible
      super_products.all_addons_section.participant_selection.click
      super_products.continue_button.click
      expect(super_products.all_addons_section.pagethree_header).to be_visible
      super_products.continue_button.click
      expect(super_products.review_page_id).to be_visible
      super_products.continue_button.click

      expect(page).to have_content("Insurance Services")
      super_products_reg
      expect(page).to have_content("medical insurance")
      sales_channels_medsaver
      expect(page).to have_content("something to be sold")
      super_college
      expect(page).to have_content("good stuff")
      something_else
    end
  end

  context "for a boy below ncsa age in baseball reg" do
    it "shows regsaver, medsaver, pitchtracker and Skills" do
      super_products.load(form_number: form_number)
      expect(super_products.test_reg_banner).to be_visible
      super_products.se_bar_sign_in.click
      expect(se_signup_page.sign_up_header).to have_content("Welcome")
      club_assign_user_login
      super_products.continue_button.click
      expect(super_products.reg_page).to be_visible
      super_products.all_addons_section.participant_selection.click
      super_products.continue_button.click
      expect(super_products.all_addons_section.pagethree_header).to be_visible
      super_products.dob_year_input.click
      super_products.filter_four_reg_dob.click
      super_products.continue_button.click
      expect(super_products.review_page_id).to be_visible
      super_products.continue_button.click

      expect(page).to have_content("Insurance Services")
      super_products_reg
      expect(page).to have_content("medical insurance")
      super_medical_product
      expect(page).to have_content("something to be sold")
      something_else
      expect(page).to have_content("Offered by The Led Zeppelins")
      another_rhing
    end
  end
end
