puts "Deleting users and dogs..."

User.destroy_all
Dog.destroy_all
puts "Creating one user and their dogs..."
paul = User.create(email: 'paul@example.com', password: "1234567")

Dog.create(name: "Emma", breed: "Golden Retriever", age: 13, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg", user_id: paul.id)
Dog.create(name: "Heidi", breed: "Dackel", age: 7, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg", user_id: paul.id)
Dog.create(name: "Henry", breed: "Cute Dog", age: 2, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg", user_id: paul.id)
Dog.create(name: "Paul", breed: "Irish Setter", age: 1, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438134/IMG_0536_kbzb32.jpg", user_id: paul.id)
Dog.create(name: "Baran", breed: "Fluffball", age: 3, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685439839/image1_ins4de.png", user_id: paul.id)
Dog.create(name: "Toni", breed: "Chihuaha", age: 5, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438143/IMG_1303_clj4kq.jpg", user_id: paul.id)
Dog.create(name: "Kath", breed: "FoxHound", age: 8, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg", user_id: paul.id)

puts "done!"
