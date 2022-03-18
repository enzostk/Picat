Item.destroy_all

20.times do |i| product = Item.create!(
  name: Faker::Games::LeagueOfLegends.champion,
  description: Faker::Lorem.sentence(word_count: 50),
  price: rand(0..500),
  image_url: "image#{i+1}.png"
);

end