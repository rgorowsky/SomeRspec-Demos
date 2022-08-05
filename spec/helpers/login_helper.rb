module LoginHelper
  def regular_login
    login_oauth(ENV["USERNAME"], ENV["PASSWORD"])
  end

  def special_admin_login
    login_oauth(ENV["SPECIALADMIN_USERNAME"], ENV["SPECIALADMIN_PASSWORD"])
  end
end
