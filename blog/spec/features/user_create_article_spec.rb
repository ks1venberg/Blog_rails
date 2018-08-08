require "rails_helper"

feature "Create_Article" do
  
  before(:each) do
    sign_up
  end

  scenario "Allow user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new')
  end

  scenario "Allow user to save new article, then edit it" do
    visit new_article_path
    fill_in :article_title, :with => 'TestTheme'
    fill_in :article_atext, :with => 'something123'
    click_button 'Save Article'

    visit edit_article_path 1
      expect(page).to have_content I18n.t('articles.edit')
      fill_in :article_atext, :with => 'TEST_EDIT_something'
      click_button 'Save Article'

    expect(page).to have_content 'TEST_EDIT_something'
  end
  
end
