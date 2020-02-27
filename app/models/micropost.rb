class Micropost < ApplicationRecord
  validates :content, presence: true, length: { minimum: 5};
  belongs_to :user
end
