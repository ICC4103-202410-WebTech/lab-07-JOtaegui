class Post < ApplicationRecord
    belongs_to :user
  has_many :post_tags, dependent: :nullify
  has_many :tags, through: :post_tags

  validates :title, presence: { message: " Please enter a title for your new post!!!" }
  validates :content, presence: { message: " Please enter content. Your post has to have some  content" }
  validates :user_id, presence: { message: " Please select a user. who are you?" }
  validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "should be a positive number." }
  validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "should be a positive number." }
  validates :published_at, presence: { message: "what time is it?" }, on: :create

  before_validation :set_default_published_at
  before_destroy :delete_post_tags

  private

  def set_default_published_at
    self.published_at ||= Time.current
  end

  def delete_post_tags
    post_tags.destroy_all
  end
end