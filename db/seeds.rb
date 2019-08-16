# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_names = ['Memphis', 'Moussa', 'Bertrand', 'Houssem', 'Lucas', 'Thiago', 'Youssouf', 'Jason', 'Joachim', 'Léo']

last_names = ['Depay', 'Dembélé', 'Traoré', 'Aouar', 'Tousart', 'Mendes', 'Koné', 'Denayer', 'Andersen', 'Dubois']

10.times do |i|
  first_name = first_names[i]
  last_name = last_names[i]
  description = "#{first_name} #{last_name} is very nice"
  email = "#{I18n.transliterate(first_name).downcase}.#{I18n.transliterate(last_name).downcase}@yopmail.com"
  User.create(first_name: first_name, last_name: last_name, description: description, email: email)
end
