people = [
  { name: "Joey" },
  { name: "Jane" },
  { name: "Cliff" }
]

people.each do |person|
  Person.create person
end

memories = [
  { memory: "Playing Catan with Joey and fam over Christmas", person_id: 1, author: "Becca" },
  { memory: "Drinking wine and eating bon bons", person_id: 2, author: "Becca" },
  { memory: "Hoppin' John at their New Years Day party", person_id: 3, author: "Becca" }
]

memories.each do |memory|
  Memory.create memory
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
