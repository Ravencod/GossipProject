require 'faker'



10.times do
    city = City.create!(name: Faker::Address.city , postal_code: Faker::Address.postcode )
end

10.times do
    user = User.create!(first_name:Faker::Name.first_name , last_name:Faker::Name.last_name , email: Faker::Internet.email , description: Faker::ChuckNorris.fact, age:Faker::Number.between(18, 25) , cities_id: Faker::Number.between(1, 10) )
end

10.times do
    tag = Tag.create!(title:Faker::ChuckNorris.fact)
end

20.times do
    gossip = Gossip.create!(title:Faker::ChuckNorris.fact , content:Faker::GameOfThrones.quote)
end

1.times do
    privatemessage = Privatemessage.create!(content: "T'es moche !" , recipient_id: Faker::Number.between(1, 5)  , sender_id: Faker::Number.between(5, 10)  )
end

20.times do
    jointablegossipstags = JoinTableGossipsTags.create!(gossip_id: Faker::Number.between(1, 20) , tag_id: Faker::Number.between(1, 10))
end
