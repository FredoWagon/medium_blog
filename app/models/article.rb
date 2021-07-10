class Article < ApplicationRecord
  has_rich_text :content

  has_many :comments
  has_many :upvotes

  validates :content, presence: true
  validates :title, presence: true

end
