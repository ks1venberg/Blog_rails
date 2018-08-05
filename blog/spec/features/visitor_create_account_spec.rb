require "rails_helper"

feature "Create_Account" do

  # before(:all) do
  #   sign_up
  # end
  
  scenario "Allow guest to create account" do
    sign_up
    # visit '/users/sign_in'
    #expect(page).to have_content 'You are already signed in.'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end 
end
