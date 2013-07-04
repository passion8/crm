# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


include Faker

skilllist = "ruby,rubyonrails,marketing,sales,objectivec,coca,nodejs,golang,
            aws,cloud,games,writer,dataentry,devops,software engineer,
            fakebook developer,developer,google apps,google developer,product manager,
            designer".split(",")

for i in 0..1000
  user = User.new
  user.first_name = Name.first_name
  user.last_name = Name.last_name
  user.title = Name.title
  user.company = "#{Company.name} #{Company.suffix}"
  user.skill_list = "#{Company.catch_phrase}, #{skilllist.sample} , #{skilllist.sample} ,#{skilllist.sample}"
  user.email = Internet.email
  user.password  = "fakingdata123"
  user.password_confirmation  = "fakingdata123"
  user.phone = PhoneNumber.cell_phone
  user.address = Address.street_address
  user.city = Address.city
  user.state = Address.state
  user.zip = Address.zip
  user.linkedin_url = Internet.url
  user.facebook_url = Internet.url
  user.twitter_url = Internet.url
  user.save
end
