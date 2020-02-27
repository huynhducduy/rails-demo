class Micropost < ApplicationRecord
  validates :content, presence: true, length: { minimum: 5};
end
