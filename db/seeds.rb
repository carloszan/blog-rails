# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create(email: "c@c.com", name: "Carlos", password: "123456",
                                                password_confirmation: "123456")

@first_tag = Tag.first_or_create!(name: "ruby")
Tag.first_or_create!(name: "loucura")

(1..100).each do |i|
  Post.create(title: i, text: "LOREM IPSUM FODIDO", author_id: 1,
                                                    tags: [@first_tag])
end
