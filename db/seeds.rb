# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
###############################################################################

# flush tables
Way.delete_all
City.delete_all
Country.delete_all

belgium = Country.create(name: "Belgium")
swiss = Country.create(name: "Switzerland")
france = Country.create(name: "France")
# cities of belgium
bruges = City.create(name: "Bruges", country_id: belgium.id)
antwerp = City.create(name: "Antwerp", country_id: belgium.id)
ghent = City.create(name: "Ghent", country_id: belgium.id)
mechelen = City.create(name: "Mechelen", country_id: belgium.id)
brussels = City.create(name: "Brussels", country_id: belgium.id)
mons = City.create(name: "Mons", country_id: belgium.id)
namur = City.create(name: "Namur", country_id: belgium.id)
liege = City.create(name: "Liege", country_id: belgium.id)
arlon = City.create(name: "Arlon", country_id: belgium.id)
tournai = City.create(name: "Tournai", country_id: belgium.id)
#cities of swiss
bern = City.create(name: "Bern", country_id: swiss.id)
fribourg = City.create(name: "Fribourg", country_id: swiss.id)
lausanne = City.create(name: "Lausanne", country_id: swiss.id)
montreux = City.create(name: "Montreux", country_id: swiss.id)
geneve = City.create(name: "Geneve", country_id: swiss.id)
sion = City.create(name: "Sion", country_id: swiss.id)
neuchatel = City.create(name: "Neuchatel", country_id: swiss.id)
basel = City.create(name: "Basel", country_id: swiss.id)
zurich = City.create(name: "Zurich", country_id: swiss.id)
davos = City.create(name: "Davos", country_id: swiss.id)
lugano = City.create(name: "Lugano", country_id: swiss.id)
#cities of france
paris = City.create(name: "Paris", country_id: france.id)
lille = City.create(name: "Lille", country_id: france.id)
strasbourg = City.create(name: "Strasbourg", country_id: france.id)
nantes = City.create(name: "Nantes", country_id: france.id)
lyon = City.create(name: "Lyon", country_id: france.id)
nice = City.create(name: "Nice", country_id: france.id)
marseille = City.create(name: "Marseille", country_id: france.id)
montpellier = City.create(name: "Montpellier", country_id: france.id)
toulouse = City.create(name: "Toulouse", country_id: france.id)
bayonne = City.create(name: "Bayonne", country_id: france.id)
bordeaux = City.create(name: "Bordeaux", country_id: france.id)
# ways of belgium
w01 = Way.create(city_from_id: bruges.id, city_to_id: ghent.id, distance: 50)
w02 = Way.create(city_from_id: ghent.id, city_to_id: tournai.id, distance: 80)
w03 = Way.create(city_from_id: tournai.id, city_to_id: brussels.id, distance: 89)
w04 = Way.create(city_from_id: ghent.id, city_to_id: brussels.id, distance: 56)
w05 = Way.create(city_from_id: ghent.id, city_to_id: antwerp.id, distance: 60)
w06 = Way.create(city_from_id: antwerp.id, city_to_id: mechelen.id, distance: 25)
w07 = Way.create(city_from_id: mechelen.id, city_to_id: brussels.id, distance: 27)
w08 = Way.create(city_from_id: brussels.id, city_to_id: mons.id, distance: 80)
w09 = Way.create(city_from_id: mons.id, city_to_id: namur.id, distance: 91)
w10 = Way.create(city_from_id: mons.id, city_to_id: tournai.id, distance: 51)
w11 = Way.create(city_from_id: namur.id, city_to_id: arlon.id, distance: 129)
w12 = Way.create(city_from_id: arlon.id, city_to_id: liege.id, distance: 123)
w13 = Way.create(city_from_id: liege.id, city_to_id: namur.id, distance: 65)
w14 = Way.create(city_from_id: liege.id, city_to_id: brussels.id, distance: 97)
# ways of swiss
w15 = Way.create(city_from_id: bern.id, city_to_id: neuchatel.id, distance: 50)
w16 = Way.create(city_from_id: bern.id, city_to_id: basel.id, distance: 100)
w17 = Way.create(city_from_id: bern.id, city_to_id: zurich.id, distance: 124)
w18 = Way.create(city_from_id: fribourg.id, city_to_id: bern.id, distance: 33)
w19 = Way.create(city_from_id: fribourg.id, city_to_id: montreux.id, distance: 62)
w20 = Way.create(city_from_id: montreux.id, city_to_id: sion.id, distance: 67)
w21 = Way.create(city_from_id: montreux.id, city_to_id: lausanne.id, distance: 30)
w22 = Way.create(city_from_id: lausanne.id, city_to_id: geneve.id, distance: 67)
w23 = Way.create(city_from_id: zurich.id, city_to_id: davos.id, distance: 148)
w24 = Way.create(city_from_id: davos.id, city_to_id: lugano.id, distance: 167)
w25 = Way.create(city_from_id: lugano.id, city_to_id: basel.id, distance: 266)
# ways of france
w26 = Way.create(city_from_id: paris.id, city_to_id: lille.id, distance: 225)
w27 = Way.create(city_from_id: paris.id, city_to_id: strasbourg.id, distance: 491)
w28 = Way.create(city_from_id: paris.id, city_to_id: lyon.id, distance: 466)
w29 = Way.create(city_from_id: lyon.id, city_to_id: marseille.id, distance: 314)
w30 = Way.create(city_from_id: marseille.id, city_to_id: nice.id, distance: 199)
w31 = Way.create(city_from_id: marseille.id, city_to_id: montpellier.id, distance: 170)
w32 = Way.create(city_from_id: montpellier.id, city_to_id: toulouse.id, distance: 243)
w33 = Way.create(city_from_id: toulouse.id, city_to_id: bayonne.id, distance: 300)
w34 = Way.create(city_from_id: toulouse.id, city_to_id: bordeaux.id, distance: 245)
w35 = Way.create(city_from_id: bayonne.id, city_to_id: bordeaux.id, distance: 186)
w36 = Way.create(city_from_id: bordeaux.id, city_to_id: nantes.id, distance: 353)
w37 = Way.create(city_from_id: paris.id, city_to_id: nantes.id, distance: 385)