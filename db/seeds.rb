# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cabinet.destroy_all
ItemType.destroy_all
Item.destroy_all

# Cabinets (name, image, user_id)
Cabinet.create(
  name: "Jenny's Stuff",
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Arolsen_Klebeband_09_231_1.jpg/405px-Arolsen_Klebeband_09_231_1.jpg',
  first_name: 'Jenny',
  last_name: 'Ingram',
  email: 'jenny@gmail.com',
  username: 'jennyjean',
  password: 'blahblah'
)

15.times do
  Cabinet.create(
    name: Faker::Hipster.word,
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Arolsen_Klebeband_09_231_1.jpg/405px-Arolsen_Klebeband_09_231_1.jpg',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.username,
    password: Faker::Internet.password(8)
  )
end

# Item_Types(name, description)
a = ItemType.create(name: 'Artificialia', description: 'created by or modified by humans')
n = ItemType.create(name: 'Naturalia', description: 'creatures and natural objects')
e = ItemType.create(name: 'Exotica', description: 'strange and/or unusual')
s = ItemType.create(name: 'Scientifica', description: 'scientific instruments')

# Item (cabinet_id, item_type_id, name, description, interpretation, location, image_url)
5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/architecture'
  )
end

5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/antique'
  )
end

5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/painting'
  )
end

5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/sculpture'
  )
end

5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/object'
  )
end

15.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: s,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/science'
  )
end

30.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: n,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/creature'
  )
end

20.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: e,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/exotic'
  )
end

5.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: a,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/instruments'
  )
end

10.times do
  Item.create(
    cabinet_id: Faker::Number.between(1, 15),
    item_type: s,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    interpretation: Faker::Hipster.paragraphs,
    location: Faker::Address.full_address,
    image_url: 'https://loremflickr.com/320/240/technology'
  )
end
