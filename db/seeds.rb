# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


    
    
properties = Property.create([
    {
      id: 1,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "Red Carpet Real Estate",
      location: "Kilimani, Nairobi",
      category: "3-bedroom",
      price: "50,000",
      type_of_house: "Apartment"
    },
    {
      id: 2,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "Fairmount Properties",
      location: "Ruaka, Nairobi",
      category: "2-bedroom",
      price: "45,000",
      type_of_house: "Condos"
    },
    {
      id: 3,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "The Real Estate Corner",
      location: "Kileleshwa, Nairobi",
      category: "1-bedroom",
      price: "47,000",
      type_of_house: "Apartment"
    },
    {
      id: 4,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "Herringbone Realty",
      location: "Parklands, Nairobi",
      category: "2-bedroom",
      price: "75,400",
      type_of_house: "Villa"
    },
    {
      id: 5,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "Brick Lane Realty",
      location: "Loresho, Nairobi",
      category: "3-bedroom",
      price: "48,500",
      type_of_house: "Apartment"
    },
    {
      id: 6,
      image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1680716041/r-architecture-MAnVoJlQUvg-unsplash_f6dlmw.jpg",
      name: "Banyon Tree Realty",
      location: "Kitisuru, Nairobi",
      category: "2-bedroom",
      price: "47,200",
      type_of_house: "Apartment"
    }
  ])


  puts "Seding admin"

    User.create(
        username: "admin",
        password: "admin",
        email: "admin@gmail.com",
        role: "admin",
        first_name: "admin",
        last_name: "admin",
    )


    puts "seeding users"


    User.create(
        username: "user1",
        password: "123456",
        email: "userone@gmail.com",
        first_name: "user",
        last_name: "tow",
    )


    User.create(
        username: "user2",
        password: "123456",
        email: "usertwo@gmail.com",
        first_name: "user",
        last_name: "two",
    )



    puts "seeding bookings"

    Booking.create(
        user_id: 2,
        property_id: 1,
        phone_number: "0712345678",
        move_in_date: "2021-12-12"
    )

    Booking.create(
        user_id: 2,
        property_id: 2,
        phone_number: "0712345678",
        move_in_date: "2021-12-12"
    )


