require "rails_helper"

feature "Create_Account" do

  scenario "Allow guest to create account" do
    visit new_user_registration_path

    fill_in :user_username, :with => 'TestUser'
    fill_in :user_email, :with => 'usrtnew@example.com'
    fill_in :user_password, :with => 'S45678000-'
    fill_in :user_password_confirmation, :with => 'S45678000-'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end
  
end