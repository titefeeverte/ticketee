# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# projects = Project.create([{ name: 'Project 1' description: 'cest un projet 1'}, {name: 'Project 2' description: 'cest un projet 2'}, {name: 'Project 3' description: 'cest un projet 3' }])

# ticket1 = project.Ticket.new({title: 'Ticket 1' description: 'cest un ticket 1'})
# ticket2 = project.Ticket.new({title: 'Ticket 2' description: 'cest un ticket 2'})
# ticket3 = project.Ticket.new({title: 'Ticket 3' description: 'cest un ticket 3'})


projectdata = ["Project", "c'est un projet"]
ticketdata  = ["Ticket", "Ceci est un ticket"]

(1..4).each do | index|
  projet = Project.create( :name =>  "#{projectdata[0]} #{index}", :description => "#{projectdata[1]} #{index}")
  (1..4).each do |ticket|
  	projet.tickets.create( :title => "#{ticketdata[0]} #{index}", :description => ticketdata[1])
	end
end



