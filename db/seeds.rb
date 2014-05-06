# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Frame.create(
  title: 'Lorem ipsum',
  institution: 'Institution',
  from: '01/01/2013',
  to: '01/01/2014',
  description: 'Somthing fancy...',
  kind: 'study',
)

Frame.create(
  title: 'Lorem ipsum 2',
  institution: 'Institution',
  from: '01/01/2013',
  to: '01/01/2014',
  description: 'Somthing fancy...',
  kind: 'work',
)
