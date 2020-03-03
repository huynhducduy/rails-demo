class Micropost < ApplicationRecord
  validates :content, presence: true, length: { minimum: 5};
  belongs_to :user
  belongs_to :category
  has_rich_text :content
  has_many_attached :images

  def self.search(search)
    if search
      self.where('title LIKE :search OR content LIKE :search', search: "%#{search}%")
    else
      self.all
    end
  end
end
