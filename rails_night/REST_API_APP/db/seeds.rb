# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(email: 'user@example.com', password: 'password', name:'bhoj bahadur karki')
u2 = User.create(email: 'user2@example.com', password: 'password', name: 'angel swing corporation')

p1 = u1.projects.create(title: 'First Project ', thumbnail: 'http:google.com/img/one.jpg', description: 'good image')
p2 = u1.projects.create(title: 'Second Project ', thumbnail: 'http:instagram.com/img/ok.jpg', description: 'good image')

p3 = u2.projects.create(title: 'Third Project ', thumbnail: 'http:astray.com/img/one.jpg', description: 'good image')
p4 = u2.projects.create(title: 'Fourth Project ', thumbnail: 'http:linkedin.com/img/one.jpg', description: 'good image')

u1.contents.create(title: 'First content', content_type: 'map', project_id: 1)
u2.contents.create(title: 'This post was the best thing in the whole world', content_type: 'blueprint',  project_id: 2)
