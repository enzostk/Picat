User.destroy_all



3.times do |i|
    user = User.create!(
        email: "jojojoj#{i}@yopmail.com",
        password: 'iiiiiiiiiiii'
    )
end