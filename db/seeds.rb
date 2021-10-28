# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Champion.delete_all
Partype.delete_all


filename = Rails.root.join("db/riot_champion.csv")
puts "loading #{filename}"

csv_data = File.read(filename)
champions = CSV.parse(csv_data, headers: true, encoding: "utf-8")

champions.each do |c|

    partype = Partype.find_or_create_by(name: c["partype"])

    

    if partype && partype.valid?
      champ =  partype.champions.create(
            name:           c["name"],
            title:          c["title"],
            description:    c["blurb"],
            image:          c["image.full"]
        )
        
    puts "invalid Champ #{c['name']}" unless champ&.valid?
    else
        puts "invalid partype #{c['partype']} for #{c['name']}"
    end

    
    
end




puts "Created #{Champion.count} Champions"
puts "Created #{Partype.count} partypes"
