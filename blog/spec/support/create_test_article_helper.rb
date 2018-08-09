def create_article

  visit new_article_path
    fill_in :article_title, :with => 'TestTheme123'
    fill_in :article_atext, :with => 'something123'
   click_button 'Save Article'

end