class User < ActiveRecord::Base
  has_many :chats, dependent: :destroy
  validates :username, presence: true
end
