# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

#crée x5

#les villes
5.times do
    City.create( city_name: Faker::Nation.unique.capital_city
)
end

30.times do
    Dog.create( name: Faker::Creature::Dog.unique.name
)
end


30.times do
    Dogsitter.create( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name
)
end

5.times do
    Stroll.create(dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id, city_id: City.all.sample.id)
end