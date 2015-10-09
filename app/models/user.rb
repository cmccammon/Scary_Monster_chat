class User < ActiveRecord::Base
  has_secure_password
  has_many :chats, dependent: :destroy
  validates :username, presence: true
end
