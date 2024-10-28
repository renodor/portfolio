# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

p "Destroy all Serivces"
Service.destroy_all
p "---------> Done!"

p "Destroy all Projects"
Project.destroy_all
p "---------> Done!"
p ""
p "Create New Projects"

backend_service = Service.create!(name: "Backend web development", icon: "icons/code.svg")
frontend_service = Service.create!(name: "Frontend web development", icon: "icons/pen.svg")

p1 = Project.new(
  name: "Aliance Francaise",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service, frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630456/portfolio/aliance-francaise_ptwjek.png')
p1.cover_photo.attach(io: cover_photo, filename: "aliance-francaise.png", content_type: "image/png")
p1.save!

p2 = Project.new(
  name: "Projet Source",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service, frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630452/portfolio/project-source_j3cwqi.png')
p2.cover_photo.attach(io: cover_photo, filename: "projet-source.png", content_type: "image/png")
p2.save!

p3 = Project.new(
  name: "Line Up Trade",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service, frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630457/portfolio/lineuptrade_aaxcw9.png')
p3.cover_photo.attach(io: cover_photo, filename: "lineup-trade.png", content_type: "image/png")
p3.save!

p4 = Project.new(
  name: "OhLaLa Panama",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service, frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630446/portfolio/ohlalapanama_ep8ro8.png')
p4.cover_photo.attach(io: cover_photo, filename: "ohlala-panama.png", content_type: "image/png")
p4.save!

p5 = Project.new(
  name: "Salva Mi Maquina",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service, frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630450/portfolio/salvamimaquina_hkbj2g.png')
p5.cover_photo.attach(io: cover_photo, filename: "salvamimaquina.png", content_type: "image/png")
p5.save!

p6 = Project.new(
  name: "Bd Troc",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [backend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630460/portfolio/bdtroc_p75geh.png')
p6.cover_photo.attach(io: cover_photo, filename: "bdtroc.png", content_type: "image/png")
p6.save!

p7 = Project.new(
  name: "GOM",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, architecto necessitatibus minima nesciunt obcaecati ipsa natus.",
  url: "www.exemple.com",
  services: [frontend_service]
)
cover_photo = URI.open('https://res.cloudinary.com/detkhu57i/image/upload/v1584630440/portfolio/gom_ccsmib.png')
p7.cover_photo.attach(io: cover_photo, filename: "gom.png", content_type: "image/png")
p7.save!

p "---------> Done!"
p "#{Project.count} projects created!"


# @user1.save!

