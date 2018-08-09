require "rails_helper"

feature "Edit_article" do

  scenario "Allow user to edit article" do
    sign_up
    create_article

      visit articles_path
      visit edit_article_path :id =>1
      expect(page).to have_content I18n.t('articles.edit')
      fill_in :article_atext, :with => 'TEST_EDIT_something'
      click_button 'Save Article'                                           
      expect(page).to have_content 'TEST_EDIT_something'

  end

end