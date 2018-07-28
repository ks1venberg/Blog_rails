require "rails_helper"

describe Article do
    describe "validations" do
        it { should validate_presence_of(:title) }
        #it { should validate_length_of(:title), minimum: 15, on: :create }
        it { should validate_presence_of(:atext) }
    end

    describe "assoсiations" do
        it { should have_many :comments }
    end

    describe "#subject" do
      it "returns the article title" do
      #create article in smart way
      article = create(:article, title: 'Lorem Ipsum')

      #assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
      end
    end

    describe "#last_comment" do
      it "returns the last comment" do
        article = create(:article_with_comments)

        expect(article.last_comment.body).to eq "comment body 3"
      end
            it { should validate_length_of(:atext), minimum: 20}
            it { should validate_length_of(:title), minimum: 20}
    end 
end