require "rails_helper"

feature "Create_comment" do

  before(:each) do
    sign_up
  end

  scenario "Allow guest to create account" do
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

  scenario "Allow user to save new article, then add comment" do
    visit new_article_path
    fill_in :article_title, :with => 'TestTheme02'
    fill_in :article_atext, :with => 'something02'
    click_button 'Save Article'
    visit article_path :id =>1

    fill_in :comment_author, :with => 'TestAuthor'
    fill_in :comment_body, :with => 'something123'
    click_button 'Create Comment'
    expect(page).to have_content 'something123'
  end
end