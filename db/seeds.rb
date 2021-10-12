# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create(name:"Celeste", username: "celestesm", password: "password")


indio = Location.create(city: "Indio", state: "California", country: "USA")
coachella = indio.festivals.create(name:"Coachella", description: "where artists go to live")
celeste = User.first
celeste_coachella = celeste.trips.create(start_date: "2022-04-15", end_date: "2022-04-17")
celeste_coachella.visits.create(festival: coachella, date: "2022-04-15")
celeste.comments.create(content: "LOVE IT HERE", festival: coachella)