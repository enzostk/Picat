
User.destroy_all
Item.destroy_all


3.times do |i|
    user = User.create!(
        email: "jojojoj#{i}@yopmail.com",
        password: 'iiiiiiiiiiii'
    )
end



20.times do |i| product = Item.create!(
  name: "Petit chat#{i+1}",
  description: "Petit con de chat",
  price: 12,
  image_url: "cat#{i+1}.png"
);

end