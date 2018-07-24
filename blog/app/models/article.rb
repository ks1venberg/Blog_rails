class Article < ApplicationRecord
  validates :title, presence: true
  validates :atext, presence: true
  has_many :comments
end
