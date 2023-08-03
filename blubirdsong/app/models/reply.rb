class Reply < ApplicationRecord
  validates :content, presence: true 
  belongs_to :post
  belongs_to :parent_reply, class_name: 'Reply', optional: true
  has_many :nested_replies, class_name: 'Reply', foreign_key: :parent_reply_id, dependent: :destroy #self-referential relationship - allows for a parent reply and nested replies
end
