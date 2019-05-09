# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
clients = Client.create([{ name: 'Google' }, { name: 'Apple' }, { name: 'Facebook' }])

Campaign.create([{ name: 'New Gmail', recipient_count: 100000, mailing_date: Date.new(2019, 5, 9), paper_format: '4x6', postage_type: 'First Class', client: Client.first }])
