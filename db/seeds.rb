# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pink_mama = { name: 'Pink Mama', address: '20bis Rue de Douai, 75009 Paris', category: 'italian' }
malro =  { name: 'Malro', address: '7 Rue Froissard, 75003 Paris', category: 'french' }
big_love = { name: 'BigLove', address: '30 Rue Debelleyme, 75003 Paris', category: 'italian' }
gucci_osteria = { name: 'Gucci Osteria', address: 'P.za della Signoria, 10, Firenze FI, Italie', category: 'italian' }
gigi = { name: 'Gigi', address: '15 Av. Montaigne, 75008 Paris', category: 'italian' }

[pink_mama, malro, big_love, gucci_osteria, gigi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
