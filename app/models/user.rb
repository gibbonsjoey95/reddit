class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
