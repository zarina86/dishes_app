# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Ingredient.destroy_all

Ingredient.create!([{
  name: "ряженка"
},
{
  name: "йогурт 2%"
},
{
  name: "безлактозное молоко"
},
{
  name: "лапша удон"
},
{
  name: "ваниль"
},
{
  name: "баклажан"
},
{
  name: "перец черный"
},
{
  name: "сливки пастеризованные"
},
{
  name: "сыр тофу"
},
{
  name: "курага"
},
{
  name: "черная смородина"
},
{
  name: "птитим"
},
{
  name: "спагетти"
},
{
  name: "трюфельное масло"
},
{
  name: "масло подсолнечное нераф"
},
{
  name: "яйца"
},
{
  name: "мука овсяная"
},
{
  name: "фарш курино-мясной"
},
{
  name: "тунец"
},
{
  name: "говядина"
},
])

Dish.destroy_all
