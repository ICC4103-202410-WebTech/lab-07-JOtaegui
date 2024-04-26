# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# PostTag.delete_all
# Post.delete_all
# User.delete_all
# Tag.delete_all



# User.create!(
#   name: "John Doe",
#   email: "john@example.com",
#   password: "password"
# )

# User.create!(
#   name: "Jane Smith",
#   email: "jane@example.com",
#   password: "password"
# )

# User.create!(
#   name: "Michael Johnson",
#   email: "michael@example.com",
#   password: "password"
# )

# User.create!(
#   name: "Emily Brown",
#   email: "emily@example.com",
#   password: "password"
# )

# User.create!(
#   name: "David Lee",
#   email: "david@example.com",
#   password: "password"
# )




# Post.create!(
#   title: "Post 1 by John Doe",
#   content: "This is the content of post 1 by John Doe.",
#   published_at: Time.now - 10.days,
#   user: User.first,
#   tags: [Tag.find_by(name: "Technology")]
# )

# Post.create!(
#   title: "Post 2 by John Doe",
#   content: "This is the content of post 2 by John Doe.",
#   published_at: Time.now - 5.days,
#   user: User.first,
#   tags: [Tag.find_by(name: "Science")]
# )

# Post.create!(
#   title: "Post 1 by Jane Smith",
#   content: "This is the content of post 1 by Jane Smith.",
#   published_at: Time.now - 7.days,
#   user: User.second,
#   tags: [Tag.find_by(name: "Art")]
# )

# Post.create!(
#   title: "Post 2 by Jane Smith",
#   content: "This is the content of post 2 by Jane Smith.",
#   published_at: Time.now - 3.days,
#   user: User.second,
#   tags: [Tag.find_by(name: "Travel")]
# )


# Post.create!(
#   title: "Post 3 by John Doe",
#   content: "This is the content of post 3 by John Doe.",
#   published_at: Time.now - 4.days,
#   user: User.first,
#   tags: [Tag.find_by(name: "Nature")]
# )

# Post.create!(
#   title: "Post 1 by Michael Johnson",
#   content: "This is the content of post 1 by Michael Johnson.",
#   published_at: Time.now - 5.days,
#   user: User.third,
#   tags: [Tag.find_by(name: "Science")]
# )

# Post.create!(
#   title: "Post 1 by Emily Brown",
#   content: "This is the content of post 1 by Emily Brown.",
#   published_at: Time.now - 7.days,
#   user: User.forth,
#   tags: [Tag.find_by(name: "Art")]
# )

# Post.create!(
#   title: "Post 2 by Emily Brown",
#   content: "This is the content of post 2 by Emily Brown.",
#   published_at: Time.now - 3.days,
#   user: User.forth,
#   tags: [Tag.find_by(name: "Travel")]
# )

# Post.create!(
#   title: "Post 3 by Emily Brown",
#   content: "This is the content of post 3 by Emily Brown.",
#   published_at: Time.now - 1.days,
#   user: User.forth,
#   tags: [Tag.find_by(name: "Travel")]
# )


# Post.create!(
#   title: "Post 1 by David Lee",
#   content: "This is the content of post 3 by David Lee.",
#   published_at: Time.now - 1.days,
#   user: User.fifth,
#   tags: [Tag.find_by(name: "Travel")]
# )


PostTag.delete_all
Post.delete_all
User.delete_all
Tag.delete_all

users = [
  { name: "John Doe", email: "john@example.com", password: "thtd44f" },
  { name: "Jane Smith", email: "jane@example.com", password: "passwordfghgfd" },
  { name: "Michael Johnson", email: "michael@example.com", password: "35423543" },
  { name: "Emily Brown", email: "emily@example.com", password: "pas4543sword" },
  { name: "David Lee", email: "david@example.com", password: "pasx3sw5dfvord" }
]

users.each do |user_params|
  User.create!(user_params)
end

tags = [
  { name: "Technology" },
  { name: "Science" },
  { name: "Art" },
  { name: "Travel" },
  { name: "Nature" }
]

tags.each do |tag_params|
  Tag.create!(tag_params)
end

posts = [
  { title: "Post 1", content: "This is the content of post 1 by John Doe.", published_at: Time.now - 10.days, user: User.first, tag_name: "Technology" },
  { title: "Post 2 by John Doe", content: "This is the content of post 2 by John Doe.", published_at: Time.now - 5.days, user: User.first, tag_name: "Science" },
  { title: "Post 1", content: "This is the content of post 1 by Jane Smith.", published_at: Time.now - 7.days, user: User.second, tag_name: "Art" },
  { title: "Post 2 by Jane Smith", content: "This is the content of post 2 by Jane Smith.", published_at: Time.now - 3.days, user: User.second, tag_name: "Travel" },
  { title: "Post 3 by John Doe", content: "This is the content of post 3 by John Doe.", published_at: Time.now - 4.days, user: User.first, tag_name: "Nature" },
  { title: "Post 1 by Michael Johnson", content: "This is the content of post 1 by Michael Johnson.", published_at: Time.now - 5.days, user: User.third, tag_name: "Science" },
  { title: "Post 1 by Emily Brown", content: "This is the content of post 1 by Emily Brown.", published_at: Time.now - 7.days, user: User.fourth, tag_name: "Art" },
  { title: "Post 2 by Emily Brown", content: "This is the content of post 2 by Emily Brown.", published_at: Time.now - 3.days, user: User.fourth, tag_name: "Travel" },
  { title: "Post 3 by Emily Brown", content: "This is the content of post 3 by Emily Brown.", published_at: Time.now - 1.days, user: User.fourth, tag_name: "Travel" },
  { title: "Post 1 by David Lee", content: "This is the content of post 3 by David Lee.", published_at: Time.now - 1.days, user: User.fifth, tag_name: "Travel" }
]

posts.each do |post_params|
  tag_name = post_params.delete(:tag_name)
  tag = Tag.find_by(name: tag_name)
  post_params[:tags] = [tag]
  Post.create!(post_params)
end