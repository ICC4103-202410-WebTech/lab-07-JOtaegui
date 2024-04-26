class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "can't be blank. You have a name?." }
  validates :email, presence: { message: " We need your email!!!!" },
                    uniqueness: { message: "is already taken. Please choose a different email." },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "format is invalid. Please enter a valid email." }
  validates :password, presence: { message: " Please enter your password make it a secure one please." },
                       length: { minimum: 6, message: "should be at least 6 characters long or it is easy to hack you." }
end