require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  def setup
    @user = users(:confirmed_user)
  end
  
  test "should log in then log out" do
    visit kc_ac_yec_hed_mat_path

    click_link 'login'

    within('#session_form') do
      fill_in 'login_email', with: @user.email
      fill_in 'login_password', with: "secret"
  
      click_button "Connexion"
    end

    assert page.has_text?(@user.email, wait: 5)

    click_link 'logout'

    assert page.has_no_text?(@user.email, wait: 3)
  end

end
