# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  user1 = User.create!(email: 'email_1_@email_1_.com')
  user2 = User.create!(email: 'email_2_@email_2_.com')
  user3 = User.create!(email: 'email_3_@email_3_.com')
  user4 = User.create!(email: 'email_4_@email_4_.com')
  user5 = User.create!(email: 'email_5_@email_5_.com')

  ShortenedUrl.destroy_all
  short1 = ShortenedUrl.create_short_url(user1, "woiejfowiejfoi")
  short2 = ShortenedUrl.create_short_url(user2, "20938ue49n384gn93w8n4")
  short3 = ShortenedUrl.create_short_url(user3, "w984utn938u4n98gwu94ng8un2394u8ng93")
  short4 = ShortenedUrl.create_short_url(user4, "w3o84unfg39wespuhrtneosrunp3gw904utgmp39wu4gnp")
  short5 = ShortenedUrl.create_short_url(user5, "e9r85yhmw490u5engr9w8u49goq3nu94pw8ngu9q3w8n34ut9gpqnu349g")
  short6 = ShortenedUrl.create_short_url(user3, "ewo87rygnw09348nu5h90q38nu49wrg8unq3984wgubq3w89anu3t9n4g8uwe489yngq3p98")
  short7 = ShortenedUrl.create_short_url(user4, "3w489tynupw39m4tp9qyn3490mtuapvw9n3voet9umw[ps0vtumpgociesucmrtoops4tenuvpcoqwnu4]")

  Visit.destroy_all
  Visit.record_visit!(user1, short2)
  Visit.record_visit!(user3, short1)
  Visit.record_visit!(user5, short7)
  Visit.record_visit!(user1, short3)
  Visit.record_visit!(user2, short6)
  Visit.record_visit!(user1, short4)
  Visit.record_visit!(user4, short2)
  Visit.record_visit!(user4, short3)
  Visit.record_visit!(user1, short5)
end
