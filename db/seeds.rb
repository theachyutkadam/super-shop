# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "datta@gmail.com", password: "654321")

Customer.create(first_name: "achyut", middle_name: "dilip", last_name: "kadam", contact: "123467890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "mahesh", middle_name: "ramesh", last_name: "shinde", contact: "123468890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "ramesh", middle_name: "mahesh", last_name: "kadam", contact: "123469890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "priyanka", middle_name: "bhima", last_name: "kudal", contact: "1234510890", birthdate: Date.today, gender: "female", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "datta", middle_name: "maruti", last_name: "dedhe", contact: "1234511890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "mayur", middle_name: "vitthal", last_name: "gandole", contact: "1234512890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "shankar", middle_name: "somnath", last_name: "karanjkar", contact: "1234513890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "shubham", middle_name: "parasram", last_name: "jedgule", contact: "1234514890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "vaibhaw", middle_name: "maruti", last_name: "shinde", contact: "1234515890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "vaishnavi", middle_name: "dilip", last_name: "jedgule", contact: "1234516890", birthdate: Date.today, gender: "female", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "shantaram", middle_name: "dilip", last_name: "kale", contact: "1234517890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "ravi", middle_name: "dilip", last_name: "gunjal", contact: "1234518890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "mahesh", middle_name: "dilip", last_name: "gulve", contact: "1234567890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "achyut", middle_name: "amol", last_name: "kangune", contact: "1234567890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "amol", middle_name: "shantaram", last_name: "pardhi", contact: "1234567890", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")
Customer.create(first_name: "avinash", middle_name: "kishor", last_name: "dushing", contact: "987654321", birthdate: Date.today, gender: "male", address: "at- saykhindi tal- sangamner, dist- ahemadnagar")

Product.create(name: "ground nuts", measure: "kg", rate: "100", code: "12563", category: "grocery", discount: "0")
Product.create(name: "shugar", measure: "kg", rate: "80", code: "12564", category: "grocery", discount: "0")
Product.create(name: "gram dal", measure: "kg", rate: "180", code: "12565", category: "grocery", discount: "0")

Product.create(name: "life buoy", measure: "single", rate: "10", code: "12567", category: "personal", discount: "0")
Product.create(name: "buscuits", measure: "single", rate: "10", code: "12568", category: "personal", discount: "0")
Product.create(name: "milk", measure: "ltr", rate: "60", code: "12569", category: "dairy", discount: "0")

Product.create(name: "banana", measure: "dozen", rate: "60", code: "12569", category: "fruit", discount: "0")


puts "------------------------"
puts "record successfully inserted"
puts "------------------------"