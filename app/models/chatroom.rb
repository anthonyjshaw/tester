class Chatroom < ApplicationRecord
  validates :sender_id, uniqueness: {scope: :receiver_id, message: "There is already a chatroom."}
  has_many :messages
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
