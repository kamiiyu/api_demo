# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create([{name: 'Adam', age: 999999}, {name: 'Eva', age: 999998}])

(1..5).each{|i| Article.create(author_id:1, title: "article#{i}", content: "#{i*100} years ago, there are ...",path: "adam/article#{i}")}

(6..10).each{|i| Article.create(author_id:2, title: "article#{i}", content: "#{i*100} years ago, there are ...",path: "eva/article#{i}")}
