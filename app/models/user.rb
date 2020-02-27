class User < ApplicationRecord
  validates :name, presence: true;
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP };
  has_many :microposts

  def self.search(search)
    if search
      self.where('name LIKE :search OR email LIKE :search', search: "%#{search}%")
    else
      self.all
    end
  end
end
