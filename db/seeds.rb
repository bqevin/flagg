# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

org=Organization.create!(
  {
    name:"Save The Children",
    email: "savethechildren@gmail.com",
    phone: "+25690876543",
    bio:"This is save the children"
  }
)

User.create!(
  {
    first_name: "John",
    last_name: "Doe",
    email: "johndoe@gmail.com",
    password:"123456",
    organization_id: org.id
  }
)
