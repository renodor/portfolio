# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "Destroy all Projects"
Project.destroy_all
p "---------> Done!"
p ""
p "Create New Projects"

Project.create!(name: "Aliance Francaise", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

Project.create!(name: "Projet Source", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

Project.create!(name: "Line Up Trade", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

Project.create!(name: "OhLaLa Panama", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

Project.create!(name: "Salvamimaquina", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

Project.create!(name: "Bd Troc", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.", url: "www.exemple.com")

p "---------> Done!"
p "#{Project.count} projects created!"
