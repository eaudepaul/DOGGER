puts "Deleting users and dogs..."

Dog.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating user..."
paul = User.create(email: 'paul@example.com', password: "1234567")
antonio = User.create(email: 'antonio@example.com', password: "1234567")

puts "Creating booking..."
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: paul.id, dog_id: 1)

puts "Creating dogs..."
Dog.create(name: "Emma", breed: "Golden Retriever", age: 13, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438154/IMG_0884_nhlvtg.jpg", user_id: paul.id)
Dog.create(name: "Heidi", breed: "Dackel", age: 7, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685441034/image1_uz8ijx.jpg", user_id: paul.id)
Dog.create(name: "Henry", breed: "Cute Dog", age: 2, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438190/IMG_0428_nd3jt3.jpg.jpg", user_id: paul.id)
Dog.create(name: "Paul", breed: "Irish Setter", age: 1, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438134/IMG_0536_kbzb32.jpg", user_id: antonio.id)
Dog.create(name: "Baran", breed: "Fluffball", age: 3, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685441018/image0_pbutxp.jpg", user_id: antonio.id)
Dog.create(name: "Toni", breed: "Chihuaha", age: 5, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438143/IMG_1303_clj4kq.jpg", user_id: antonio.id)
Dog.create(name: "Kath", breed: "FoxHound", age: 8, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685441044/IMG_2288_w8czmc.jpg", user_id: antonio.id)

puts "done!"
