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
charlotte = User.create(email: 'charlotte@example.com', password: "1234567" )
baran = User.create(email: 'baran@example.com', password: "1234567" )

puts "Creating dogs..."
def create_dog(url, dog)
  file = URI.open(url)
  dog.photo.attach(io: file, filename: "dog.jpg", content_type: "image/jpg")
  return dog
end

dog1 = Dog.new(name: "Emma", breed: "Golden Retriever", age: 13, user_id: antonio.id, address: "Taubenstraße 30, 10117 Berlin", cuddliness: rand(1..5), details: "Emma is a cheerful and affectionate golden retriever. She is known for her gentle nature and unwavering love for her cute batch 1217 devs. Emma is a natural therapy dog, bringing joy to everyone she meets.")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612409/l4v4npefec2fevbqgtqk.jpg", dog1)
dog.save

dog2 = Dog.new(name: "Heidi", breed: "Dackel", age: 7, user_id: charlotte.id, address: "Zimmerstraße 68, 10117 Berlin", cuddliness: rand(1..5), details: "Heidi is a lively and charming Dachshund, known for her playful antics and affectionate nature that melts hearts. Her small size belies her bold personality, making her a delightful companion.")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685613437/qdcvtitcxemcjq7qfpn8.jpg", dog2)
dog.save

dog3 = Dog.new(name: "Henry", breed: "Dackel", age: 2, user_id: kath.id, address: "Charlottenstraße 1, 10969 Berlin", cuddliness: rand(1..5), details: "Henry is a mischievous and playful Dachshund. Despite his small size, he has a big personality. Henry loves to burrow into blankets and enjoys engaging in hilarious antics that keep his family entertained. He may not be the cuddliest at first, but once you get to know him, cuddles are all he'll want!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685611688/IMG_2158_vho4pt.jpg", dog3)
dog.save

dog4 = Dog.new(name: "Paul", breed: "Irish Setter", age: 1, user_id: antonio.id, address: "Puttkamerstraße 13, 10969 Berlin", cuddliness: rand(1..5), details: "Paul is a vibrant and friendly Irish Setter with a playful spirit. With a beautiful red coat and an outgoing personality, Paul loves outdoor adventures and is a quick learner. A loyal and affectionate companion, Paul brings joy to any family, and a few jokes too!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612419/pfnwbgeezi0lcb0fseoq.jpg", dog4)
dog.save

dog5 = Dog.new(name: "Baran", breed: "Fluffball", age: 3, user_id: paul.id, address: "Jägerstraße 67, 10117 Berlin", cuddliness: rand(1..5), details: "Baran is a loyal and protective Fluffball. He is known for his boundless energy and enthusiasm. Baran is a great companion for an active family, always ready for a long walk or an exciting game of fetch. He can also advise you on your finances. 💶")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612054/rzmme26tzuoe0apkni4b.jpg", dog5)
dog.save

dog6 = Dog.new(name: "Toni", breed: "Chihuahua", age: 5, user_id: paul.id, address: "Markgrafenstraße 20, 10969 Berlin", cuddliness: rand(1..5), details: "Antonio is a spunky and confident Chihuahua, full of personality and sass, who has a big heart and loves JavaScript. His loyalty and protective nature make him a devoted companion, always ready to shower his loved ones with affection. Eleganza!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612349/zvwvr3wkuczw7qahuatc.jpg", dog6)
dog.save

dog7 = Dog.new(name: "Lotte", breed: "Beagle", age: 6, user_id: kath.id, address: "Friedrichstraße 43-45, 10117 Berlin", cuddliness: rand(1..5), details: "Lotte is a friendly and sociable Beagle. She has an incredible sense of smell and loves to follow her nose, often leading her to exciting adventures. Lotte's charm and affable nature make her a favorite among both children and adults. She's also a pro at geocoding.")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685116267/production/fg9corb6mh0imu72vwdd5gar2cg2.jpg", dog7)
dog.save

dog8 = Dog.new(name: "Memo", breed: "Yorkshire terrier", age: 8, user_id: baran.id, address: "Rudi-Dutschke-Straße 26, 10969 Berlin", cuddliness: 5, details: "Memo is a spirited and bold Yorkshire terrier with a larger-than-life personality. With his luxurious coat and confident demeanor, he's always ready for adventure and is a constant source of joy and entertainment for all. He loves everyone in batch 1217 and everyone in batch 1217 loves Memo!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685611688/IMG_2531_dkuc1j.jpg", dog8)
dog.save

dog9 = Dog.new(name: "Kath", breed: "Weimaraner", age: 8, user_id: paul.id, address: "Französische Str. 24, 10117 Berlin", cuddliness: rand(1..5), details: "Kath is a protective and alert Weimaraner. She is highly intelligent and has a strong sense of loyalty. Kath is the perfect watchdog, always vigilant and ready to defend you! Woof!!!")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612378/zf8dlypqjjcrs6vicft0.jpg", dog9)
dog.save

dog10 = Dog.new(name: "Pedro", breed: "Border Collie", age: 11, user_id: charlotte.id, address: "Ritterstraße 71, 10969 Berlin", cuddliness: rand(1..5), details: "Pedro is a very laid back Border Collie. He is very friendly and loves to play with other dogs. He is also very smart and can do many tricks with Footvolleys. He is a great companion for a family with children.")
dog = create_dog("https://res.cloudinary.com/di0qqolg7/image/upload/v1685713571/dog_uawebn.jpg", dog10)
dog.save

dog11 = Dog.new(name: "Sebi", breed: "German Sheperd", age: 4, user_id: charlotte.id, address: "Alexandrinenstraße 119, 10969 Berlin", cuddliness: rand(1..5), details: "Sebi is smart and attentive. Enjoys playing by the river and going for long walks. His stubbornness can be a challenge, but he is very loyal and will always be by your side.")
dog = create_dog("https://res.cloudinary.com/dbak464dw/image/upload/v1685612378/zf8dlypqjjcrs6vicft0.jpg", dog11)
dog.save

dog12 = Dog.new(name: "Santi", breed: "Mexican Hairless", age: 4, user_id: antonio.id, address: "Johanniterstraße 30, 10961 Berlin", cuddliness: rand(1..5), details: "Santis hairless appearance can be confusing, but underneath his skin the ancient Xoloitzcuintle is a loyal and loving companion. He is very intelligent and enjoys long walks on the beach. Big Bonus: He is hypoallergenic!")
dog = create_dog("https://res.cloudinary.com/di0qqolg7/image/upload/v1685712127/Xoloitzcuintle_fyvybp.jpg", dog12)
dog.save

dog13 = Dog.new(name: "Adam", breed: "Irish Wolfhound", age: 17, user_id: baran.id, address: "Pohlstraße 55, 10785 Berlin", cuddliness: rand(1..5), details: "Adam is calm and pensive. He is great company for children and adults alike. He is very loyal and will throw himself in front of danger for you if you're not careful. His size makes him the perfect traveling lounge sofa for a midday snooze.")
dog = create_dog("https://res.cloudinary.com/di0qqolg7/image/upload/v1685712238/images_twujal.jpg", dog13)
dog.save

dog14 = Dog.new(name: "Zak", breed: "Akita", age: 1, user_id: baran.id, address: "Pallasstraße 9, 10781 Berlin", cuddliness: rand(1..5), details: "Youg Akita puppy Zak is new to the city. His mellow and friendly personality makes him not just a great companion, but also very adaptable to new surroundings and every changing sleeping arrangements. He is a great companion to anyone in need of some joy in their lives.")
dog = create_dog("https://res.cloudinary.com/di0qqolg7/image/upload/v1685712859/Japanese-Akitainu-puppy-playing-in-the-grass_b1io7y.jpg", dog14)
dog.save
# useless comment

puts "Creating bookings..."

Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: paul.id, dog_id: dog1.id)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: paul.id, dog_id: dog2.id)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: paul.id, dog_id: dog3.id)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: antonio.id, dog_id: dog5.id)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: antonio.id, dog_id: dog6.id)
Booking.create(start_date: "2023-05-30", end_date: "2023-06-01", user_id: antonio.id, dog_id: dog7.id)
puts "...and done!"
