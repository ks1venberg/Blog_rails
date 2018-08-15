class Article < ApplicationRecord
  validates :title, presence: true, length: {in: 5..200}, uniqueness: true
  validates :atext, presence: true
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end

end