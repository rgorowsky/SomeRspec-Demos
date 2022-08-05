describe "Validating all super product", type: :feature, service: "custom_service_tag" do
  context "Medical Product" do
    subject(:super_products) { SuperProducts.new }
    subject(:se_signup_page) { SELogin.new }
    let(:form_number) { "blablahfoobar_url_id" }

    it "shows cool product when available" do
      super_products.load(form_number: form_number)
      expect(super_products.test_reg_banner).to be_visible
      super_products.seb_bar_sign_in.click
      expect(se_signup_page.sign_up_header).to have_content("Welcome")
      special_admin_login # put login user here check login_helper.rb file
      super_products.continue_button.click
      expect(super_products.registration_page).to be_visible
      super_products.super_medical_product.participant_selection.click
      super_products.continue_button.click
      expect(super_products.super_medical_product.pagethree_header).to be_visible
      super_products.super_medical_product.med_coverage.click
      reg_dob("over18")
      super_products.super_medical_product.gender_selection.click
      super_products.continue_button.click
      expect(super_products.review_page_id).to be_visible
      super_products.continue_button.click
      # have been unable to use expect() with page object model, for now use 'expect(page)' doesn't wait to recognize the iframed in shadow root - this will be an upgrade next time it's looked at
      expect(page).to have_content("Yes, I would like to buy stuff")
    end
  end
end
