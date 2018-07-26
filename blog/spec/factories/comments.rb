FactoryBot.define do
  factory :comment do
    author "Author_test"
    sequence(:body) {|n| "comment body #{n}"}
  end
end