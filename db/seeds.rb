puts "deleting dogs..."

Dog.destroy_all

puts "creating dogs..."

Dog.create(name: "Heidi", breed: "Dackel", age: 7, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg")
Dog.create(name: "Henry", breed: "Cute Dog", age: 2, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg")
Dog.create(name: "Paul", breed: "Irish Setter", age: 1, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438134/IMG_0536_kbzb32.jpg")
Dog.create(name: "Baran", breed: "Fluffball", age: 3, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685439839/image1_ins4de.png")
Dog.create(name: "Toni", breed: "Chihuaha", age: 5, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438143/IMG_1303_clj4kq.jpg")
Dog.create(name: "Kathy", breed: "FoxHound", age: 8, photo_url: "https://res.cloudinary.com/di0qqolg7/image/upload/v1685438162/IMG_0955_lpuxfg.jpg")

puts "done!"
