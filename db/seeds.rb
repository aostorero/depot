# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(title: 'Carta de truco',
  description:
    %{
	  Una sola carta de truco, lista para reemplazar la que te falta.
	  Incluye un protector de plastico para que sepan que carta tenes
      cuando jugas con los pi.
	  },
  image_url: 'truc.jpg',
  price: 5.00)  
  Product.create!(title: 'Libro de prog',
  description:
    %{
	  Un libro de programacion para aprender re bien y ser re picante haciendo paginas web.
	  },
  image_url: 'truc.jpg',
  price: 50.00)  