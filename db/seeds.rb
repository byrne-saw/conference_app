# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do 
#   first_name = FFaker::NameRU.first_name
#   last_name = FFaker::NameRU.last_name

#   speaker = Speaker.new(
#                         first_name: first_name,
#                         last_name: last_name,
#                         email: first_name + "." + last_name + "@" + FFaker::Internet.domain_name
#                         )

#   speaker.save
# end 


# 100.times do 


#   meeting = Meeting.new(
#                         title: FFaker::Product.product,
#                         agenda: FFaker::Job.title,
#                         time: FFaker::Time.date
#                         )
#   meeting.save
# end


Topic.create!([
              {name: "Stand Up"},
              {name: "Birthing"},
              {name: "Investigations into Misconduct"},
              {name: "The State of Things"},
              {name: "End Times"}, 
              {name: "Remembering the Alamo"} 
              ])

topic_ids = Topic.pluck(:id)

Meeting.all.each do |meeting|
  sampled_ids = topic_ids.sample(rand(2..3))

  sampled_ids.each do |topic_id|
    MeetingTopic.create!(meeting_id: meeting.id, topic_id: topic_id)
  end
end
