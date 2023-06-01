require 'faker'
require 'open-uri'

puts "Deleting bookings, dogs, and users..."

Booking.destroy_all
Dog.destroy_all
User.destroy_all

puts "Creating user..."

paul = User.create(email: 'paul@example.com', password: "1234567")
antonio = User.create(email: 'antonio@example.com', password: "1234567")
kath = User.create(email: 'kath@example.com', password: "1234567" )

puts "Creating dogs..."
def create_dog(url, dog)
  file = URI.open(url)
  dog.photo.attach(io: file, filename: "dog.jpg", content_type: "image/jpg")
  return dog
end

dog = Dog.new(name: "Emma", breed: "Golden Retriever", age: 13, user_id: antonio.id, address: "Taubenstraße 30, 10117 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612409/l4v4npefec2fevbqgtqk.jpg", dog)
dog.save

dog = Dog.new(name: "Heidi", breed: "Dackel", age: 7, user_id: paul.id, address: "Zimmerstraße 68, 10117 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685613437/qdcvtitcxemcjq7qfpn8.jpg", dog)
dog.save

dog = Dog.new(name: "Henry", breed: "Dackel", age: 2, user_id: paul.id, address: "Charlottenstraße 1, 10969 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685611688/IMG_2158_vho4pt.jpg", dog)
dog.save

dog = Dog.new(name: "Paul", breed: "Irish Setter", age: 1, user_id: paul.id, address: "Puttkamerstraße 13, 10969 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612419/pfnwbgeezi0lcb0fseoq.jpg", dog)
dog.save

dog = Dog.new(name: "Baran", breed: "Fluffball", age: 3, user_id: paul.id, address: "Jägerstraße 67, 10117 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612054/rzmme26tzuoe0apkni4b.jpg", dog)
dog.save

dog = Dog.new(name: "Toni", breed: "Chihuaha", age: 5, user_id: paul.id, address: "Markgrafenstraße 20, 10969 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612349/zvwvr3wkuczw7qahuatc.jpg", dog)
dog.save

dog = Dog.new(name: "Lotte", breed: "FoxHound", age: 8, user_id: paul.id, address: "Friedrichstraße 43-45, 10117 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685116267/production/fg9corb6mh0imu72vwdd5gar2cg2.jpg", dog)
dog.save

dog = Dog.new(name: "Memo", breed: "FoxHound", age: 8, user_id: paul.id, address: "Rudi-Dutschke-Straße 26, 10969 Berlin", cuddliness: 5, details: "Loves everyone and wants to play with you!!!!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685611688/IMG_2531_dkuc1j.jpg", dog)
dog.save

dog = Dog.new(name: "Oreo", breed: "FoxHound", age: 8, user_id: paul.id, address: "Französische Str. 24, 10117 Berlin", cuddliness: rand(1..5), details: Faker::Movies::StarWars.quote)
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612378/zf8dlypqjjcrs6vicft0.jpg", dog)
dog.save

puts "Creating bookings..."

Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: antonio.id, dog_id: 1)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: antonio.id, dog_id: 1)
puts "...and done!"
