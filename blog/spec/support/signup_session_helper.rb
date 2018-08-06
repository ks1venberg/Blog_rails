def sign_up
    visit new_user_registration_path

    fill_in :user_username, :with => 'TestUser123'
    fill_in :user_email, :with => 'user123@example.com'
    fill_in :user_password, :with => 'Ss45678000-'
    fill_in :user_password_confirmation, :with => 'Ss45678000-'

    click_button 'Sign up'

end