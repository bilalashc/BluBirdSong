class Post < ApplicationRecord
    validates :body, presence: true

    has_many :replies, dependent: :destroy
end