class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags
  
    validates :name, presence: { message: "can't be blank. Please enter a tag name." },
                   uniqueness: { message: "is already taken. Please choose a different and creative tag name." }
  end