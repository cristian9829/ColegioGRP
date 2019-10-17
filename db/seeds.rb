# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CentroIntere.create(
	title: "prueba", 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum molestias saepe, ex 
	sequi soluta et recusandae quis! Aliquid distinctio, eligendi earum voluptate ipsa eum praesentium, 
	excepturi corporis iste impedit repellendus!",
	requirements: "Lorem distinctio, eligendi earum voluptate ipsa eum praesentium, 
	excepturi corporis iste impedit repellendus",
	schedule: "26 junio",
	img: "https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_960_720.jpg"
)


Event.create(
	title: "pruebaEvent", 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum molestias saepe, ex 
	sequi soluta et recusandae quis! Aliquid distinctio, eligendi earum voluptate ipsa eum praesentium, 
	excepturi corporis iste impedit repellendus!",
	header_events: "true",
	date_event: "26 junio",
	img: "https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_960_720.jpg"
)


Event.create(
	title: "pruebaEvent2", 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum molestias saepe, ex 
	sequi soluta et recusandae quis! Aliquid distinctio, eligendi earum voluptate ipsa eum praesentium, 
	excepturi corporis iste impedit repellendus!",
	header_events: "false",
	date_event: "32 junio",
	img: "https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_960_720.jpg"
)

Image.create(
	description: "prueba", likes_counter: "3"
)

