class User < ActiveRecord::Base
  has_many :chats, dependent: :destroy
  validates :name, presence: true
end
