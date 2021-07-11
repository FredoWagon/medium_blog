class Article < ApplicationRecord
  has_rich_text :content

  has_many :comments,dependent: :destroy
  has_many :upvotes,dependent: :destroy

  validates :content, presence: true
  validates :title, presence: true


  scope :availables, -> { where(private: false) }

end
