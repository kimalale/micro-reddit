class User < ApplicationRecord
    has_many :comments
    has_many :posts
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :email, presence: true, uniqueness: true
end
