require "rails_helper"

feature "Create_contact" do

  scenario "Allow access to contacts page" do
    
    visit '/contacts'

    expect(page).to have_content 'Contact us'
  end
  
end