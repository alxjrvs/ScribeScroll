# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Character.create(
str: Rollr::D6.roll(3),
cha: Rollr::D6.roll(3),
wis: Rollr::D6.roll(3),
int: Rollr::D6.roll(3),
dex: Rollr::D6.roll(3),
con: Rollr::D6.roll(3),
roles: "Fighter",
fighter_levels: 1,
race: "Elf",
primary_role: "Fighter"
)
