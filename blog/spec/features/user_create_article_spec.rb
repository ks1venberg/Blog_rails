require "rails_helper"

feature "Create_Article" do
  before(:all) do
    sign_up
  end

  scenario "Allow user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New article'
  end 
end