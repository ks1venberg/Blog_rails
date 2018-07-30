require "rails_helper"

feature "Create_contact" do

  scenario "Allow access to contacts page" do
    
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allow the guest to create comment" do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    click_button 'Send message'

    expect(page).to have_content 'Thanks!'

  end
  
end