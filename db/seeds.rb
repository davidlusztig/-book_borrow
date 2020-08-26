require "faker"

User.destroy_all
Book.destroy_all
ADRESSES = ["baars 14 1511LD Oostzaan", "spiegelgracht 10, Amsterdam"]

puts 'Creating 5 fake users...'
User.create(first_name: "david", last_name: "l", email: "a@a.com", password: 123456)
5.times do
  user = User.new(
    first_name: Faker::Name.name,
    last_name:  Faker::Name.name,
    email:      Faker::Internet.email,
    password:   Faker::Number.number(digits: 6)
  )

  user.save!
  puts "Created #{user.first_name}, #{user.last_name}, #{user.email}, #{user.password}"
  puts
  # puts 'Creating 5 fake books...'

  # 5.times do
  #   book = Book.new(
  #     book_title:  Faker::Superhero.name,
  #     isbn_number: Faker::Number.number(digits: 5),
  #     book_price:  Faker::Number.number(digits: 1),
  #     condition:   ["new", "used"].sample,
  #     description: Faker::ChuckNorris.fact,
  #     location:    ADRESSES.sample,
  #     author:      Faker::Name.name,
  #     photo:       cl_image_tag("")
  #   )

  # book.user = user

  # book.save!
  # puts "Created #{book.book_title}, #{book.isbn_number}, #{book.book_price}, #{book.condition}, #{book.description}, #{book.location}, #{book.author}, #{book.photo}"

  Book.create(book_title: "Don Quixote", isbn_number: 31698, book_price: 2, condition: "as new", description: "Don Quixote kicks ass", location: ADRESSES.sample, author: "Miguel Cervantes", photo: cl_image_tag("https://res.cloudinary.com/df2nlavdo/image/upload/v1598447202/image_tbowfr.png"))
  Book.create(book_title: "Ulysses", isbn_number: 73456, book_price: 3, condition: "used", description: "A man is bored in ireland", location: ADRESSES.sample, author: "James Joyce", photo: cl_image_tag("https://res.cloudinary.com/df2nlavdo/image/upload/v1598447200/image_4_rg0pyh.png"))
  Book.create(book_title: "1984", isbn_number: 54653, book_price: 10, condition: "brand new", description: "google steals everyone's data and ruins the world", location: ADRESSES.sample, author: "George Orwell", photo: cl_image_tag("https://res.cloudinary.com/df2nlavdo/image/upload/v1598447200/image_1_xn1jnh.png"))
  Book.create(book_title: "The Great Gatsby", isbn_number: 74589, book_price: 1, condition: "very very bad - Donald Trump", description: "A very rich man has parties to stalk his crush", location: ADRESSES.sample, author: "F. Scott Fitzgerald", photo: cl_image_tag("https://res.cloudinary.com/df2nlavdo/image/upload/v1598447200/image_2_fxvag9.png"))
  Book.create(book_title: "The House Of Spirits", isbn_number: 68909, book_price: 55, condition: "It's Amazing, That's how new it is. It's Amazing. - Donald Trump", description: "A bunch of people drive eachother crazy during dictatorship in Chile.", location: ADRESSES.sample, author: "Isabelle Allende", photo: cl_image_tag("https://res.cloudinary.com/df2nlavdo/image/upload/v1598447201/image_3_dsum4k.png"))

end
puts 'Finished!'

