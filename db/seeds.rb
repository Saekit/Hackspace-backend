# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Idea.destroy_all
Vote.destroy_all

User.create(username: "admin", full_name: "Administrator", role_title: "Admin", photo_url: "none", team_id: nil, email: "admin@admin.com")
User.create(username: "Guest", full_name: "Hack", role_title: "participant", photo_url: "none", team_id: nil, email: "guest@guest.com")

Idea.create(title:"Tech Recycle", topic:"Environment", problem:"We so dirty", solution:"Web app ... we so clean", audience:"people on earth")
Idea.create(title:"Tech Security", topic:"Data Security", problem:"We so dangerous", solution:"Mobile app ... we so safe ", audience:"people on earth")
Idea.create(title:"Tech Jobs", topic:"Jobs", problem:"We so poor", solution:"Chrome extension ... we so rich", audience:"people on earth")
Idea.create(title:"Tech Transportation", topic:"Transit", problem:"We so slow", solution:"Web app ... we so fast", audience:"people on earth")


Vote.create(user_id:2, idea_id:1)
