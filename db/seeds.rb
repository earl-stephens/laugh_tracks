# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth")
Comedian.create(name: "Bob Newhart", age: 89, city: "Oak Park")
Comedian.create(name: "Carol Burnett", age: 85, city: "San Antonio")
Comedian.create(name: "Daniel Tosh", age: 43, city: "West Germany")
Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
Comedian.create(name: "Ron White", age: 63, city: "Fritch")
Comedian.create(name: "Larry The Cable Guy", age: 55, city: "Pawnee City")
Comedian.create(name: "Eddie Murphy", age: 57, city: "Brooklyn")
Comedian.create(name: "Tim Allen", age: 65, city: "Denver")
Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")

ellen = Comedian.find_by(name: "Ellen DeGeneres")
ellen.specials.create(title: "Relatable", length: 68, image: "https://m.media-amazon.com/images/M/MV5BYTlmYzI2NTMtYmZmOS00ZTYzLTg2ZTUtZDhkZjhkZDVjMWQwXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg")
ellen.specials.create(title: "Here and Now", length: 60, image: "https://m.media-amazon.com/images/I/81Sqm44+cWL._AC_UL436_.jpg")
ellen.specials.create(title: "The Beginning", length: 66, image: "https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")

anjelah = Comedian.find_by(name: "Anjelah Johnson-Reyes")
anjelah.specials.create(title: "That's How We Do It", length: 75, image: "https://m.media-amazon.com/images/M/MV5BMTExMjY0NTA2NzdeQTJeQWpwZ15BbWU4MDA3MDIxMjYx._V1_UX182_CR0,0,182,268_AL_.jpg")
anjelah.specials.create(title: "Not Fancy", length: 90, image: "https://m.media-amazon.com/images/M/MV5BODVkNDE4ZTQtNTcyMS00OTI4LWI4NjMtYmI2ZjVlNGMxZTNjXkEyXkFqcGdeQXVyMTQxMzY0ODY@._V1_UY268_CR4,0,182,268_AL_.jpg")

wanda = Comedian.find_by(name: "Wanda Sykes")
wanda.specials.create(title: "I'ma Be Me", length: 87, image: "https://m.media-amazon.com/images/M/MV5BOTAxODQ3NzQxOV5BMl5BanBnXkFtZTcwNDIwOTY4Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg")
wanda.specials.create(title: "What Happened... Ms. Sykes", length: 59, image: "https://m.media-amazon.com/images/M/MV5BOTUyMDFlZTYtZmNmZi00ODhhLTk2NTAtMjFhM2ZjNTNkOWUwXkEyXkFqcGdeQXVyNDEzMDg4Mjg@._V1_UX182_CR0,0,182,268_AL_.jpg")

bob = Comedian.find_by(name: "Bob Newhart")
bob.specials.create(title: "Ladies and Gentlemen... Bob Newhart, Part II", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTk5MDE5NDcxOV5BMl5BanBnXkFtZTcwNTAxOTkwMg@@._V1_UY317_CR12,0,214,317_AL_.jpg")
bob.specials.create(title: "The Bob Newhart Show 19th Anniversary Special", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTU5ODIxMTk4NV5BMl5BanBnXkFtZTcwMjQyNjQzMQ@@._V1._CR43,8,317,462_UY268_CR1,0,182,268_AL_.jpg")

carol = Comedian.find_by(name: "Carol Burnett")
carol.specials.create(title: "The Carol Burnett Show: A Reunion", length: 120, image: "https://m.media-amazon.com/images/M/MV5BMTY2NDA2Njg5Ml5BMl5BanBnXkFtZTYwMTEzOTc4._V1_UX182_CR0,0,182,268_AL_.jpg")
carol.specials.create(title: "The Carol Burnett Show: Show Stoppers", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMjE2NDIzNTUwM15BMl5BanBnXkFtZTcwODQ5NjAyMQ@@._V1_UY268_CR1,0,182,268_AL_.jpg")
carol.specials.create(title: "The Carol Burnett Show: 50th Anniversary Special", length: 88, image: "https://m.media-amazon.com/images/M/MV5BZjNjOTU1NjctYjZkYy00MTM3LWI4MDEtZjkzYmY1Y2Q1MDA1XkEyXkFqcGdeQXVyNjcyNjE1NQ@@._V1_UY268_CR9,0,182,268_AL_.jpg")

daniel = Comedian.find_by(name: "Daniel Tosh")
daniel.specials.create(title: "Happy Thoughts", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMjAwODYwMjU3OV5BMl5BanBnXkFtZTgwNzkyOTcwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
daniel.specials.create(title: "People Pleaser", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMTAxOTk4NDk3MzheQTJeQWpwZ15BbWU4MDk5Mjg1Nzgx._V1_UY268_CR9,0,182,268_AL_.jpg")
daniel.specials.create(title: "Completely Serious", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTk0NDU0NjAyOF5BMl5BanBnXkFtZTgwMzU2NjcwMzE@._V1_UY268_CR3,0,182,268_AL_.jpg")

chris = Comedian.find_by(name: "Chris Rock")
chris.specials.create(title: "Big Ass Jokes", length: 27, image: "https://m.media-amazon.com/images/M/MV5BOWZlNzM0NDUtYjg5NC00YTBhLWFjYjgtODVlZTlmOGI5ZjkyXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR6,0,182,268_AL_.jpg")
chris.specials.create(title: "Bigger & Blacker", length: 65, image: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
chris.specials.create(title: "Never Scared", length: 80, image: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")

ron = Comedian.find_by(name: "Ron White")
ron.specials.create(title: "If You Quit Listening, I'll Shut Up", length: 63, image: "https://m.media-amazon.com/images/M/MV5BY2NhMGNhYzQtNzYxMi00NTA0LWE4YTYtN2JjMjJjYTUyMGU4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
ron.specials.create(title: "Ron White's Comedy Salute to the Troops", length: 76, image: "https://images-na.ssl-images-amazon.com/images/I/81USioHZMnL._SY679_.jpg")

larry = Comedian.find_by(name: "Larry The Cable Guy")
larry.specials.create(title: "We've Been Thinking", length: 75, image: "https://m.media-amazon.com/images/M/MV5BYTE2YzkyNDYtODA3YS00MzA2LWE1N2ItYjg4YmNkN2ZjOTYyXkEyXkFqcGdeQXVyNDU1OTg0MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")
larry.specials.create(title: "Larry The Cable Guy's Star-Studded Christmas Extravaganza", length: 90, image: "https://m.media-amazon.com/images/I/51dy1mnVGxL._AC_UL436_.jpg")

eddie = Comedian.find_by(name: "Eddie Murphy")
eddie.specials.create(title: "Delirious", length: 69, image: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
eddie.specials.create(title: "Raw", length: 93, image: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg")

tim = Comedian.find_by(name: "Tim Allen")
tim.specials.create(title: "Tim Allen Rewires America", length: 30, image: "https://m.media-amazon.com/images/M/MV5BODM1NjM2M2QtZDg0MS00MzA0LTlhN2QtNjliNzk4YWFlZmVlXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")
tim.specials.create(title: "Men Are Pigs", length: 30, image: "https://m.media-amazon.com/images/M/MV5BNWJmMTEyOWItZDc1ZC00NjUwLWE0ZDMtZTNlNzRiMDFlNzViXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")

dana = Comedian.find_by(name: "Dana Carvey")
dana.specials.create(title: "Squatting Monkeys Tell No Lies", length: 56, image: "https://m.media-amazon.com/images/M/MV5BMTA4NzI2ODk1MTVeQTJeQWpwZ15BbWU3MDExODE0ODE@._V1_UY268_CR47,0,182,268_AL_.jpg")
dana.specials.create(title: "Straight White Male, 60", length: 64, image: "https://m.media-amazon.com/images/M/MV5BZWJlMzAxMGItNzRlMS00MTIzLTljMzItMDI5ZjIxYzU5ZTIyXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR4,0,182,268_AL_.jpg")
