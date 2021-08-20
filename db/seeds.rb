# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Course.create(
    name: "Algebra"
)

User.create([{
    name: "kz",
    email: "kztempus@gmail.com",
    course_id: 1,
    avatar: "https://gcdn.emol.cl/farandula/files/2013/10/tomka-tomicic.jpg",
    password: "123123",
    password_confirmation: "123123"
},{
    name: "Rodolfo",
    email: "asd@asd.com",
    course_id: 1,
    avatar: "https://elpinguino.com/uploads/imagenes/a2e434304dfa6cd632c2bb407e444709.jpg",
    password: "123123",
    password_confirmation: "123123"
}
])

Comment.create([{
    content: "primer comentario de kztempus",
    user_id: "1",
    created_at: DateTime.now,
    updated_at: DateTime.now
    },
    {
    content: "segundo comentario de rodolfo",
    user_id: "2",
    created_at: DateTime.now,
    updated_at: DateTime.now    
    }

])

10.times do
    Comment.create(
        content: Faker::Games::LeagueOfLegends.quote,
        user_id: "1",
        created_at: DateTime.now,
        updated_at: DateTime.now
    )
end