# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ya = Blog.create! :name => "Young Adult"
humor = Blog.create! :name => "Humor"
gnovel = Blog.create! :name => "Graphic Novel"
crime = Blog.create! :name => "Crime"
fantasy = Blog.create! :name => "Fantasy"
business = Blog.create! :name => "Business and Finance"

collins = Author.create! :author_name => "Suzanne Collins"
kaling = Author.create! :author_name => "Mindy Kaling"
handler = Author.create! :author_name => "Chelsea Handler"
ohba = Author.create! :author_name => "Tsugumi Ohba"
oda = Author.create! :author_name => "Eiichiro Oda"
grisham = Author.create! :author_name => "John Grisham"
patterson = Author.create! :author_name => "James Patterson"
martin = Author.create! :author_name => "George Martin"
tolkien = Author.create! :author_name => "John Tolkien"
ende = Author.create! :author_name => "Michael Ende"
ries = Author.create! :author_name => "Eric Ries"
eyal = Author.create! :author_name => "Nir Eyal"


a= Category.create! :category_name=>" Drama"
b=Category.create! :category_name=>"Action and Adventure"
c= Category.create! :category_name=>"Romance"
d= Category.create! :category_name=>"Mystery"
e= Category.create! :category_name=>"Horror"
f= Category.create! :category_name=>"Self help"
g= Category.create! :category_name=>"Guide"
h= Category.create! :category_name=>"Travel"
i= Category.create! :category_name=>"Children's"
j= Category.create! :category_name=>"Religious"
l= Category.create! :category_name=>"Science"
m= Category.create! :category_name=>"History"
n= Category.create! :category_name=>"Math"
o= Category.create! :category_name=>"Anthologies"
p= Category.create! :category_name=>"Poetry"
q= Category.create! :category_name=>"Encyclopedias"
r= Category.create! :category_name=>"Dictionaries"
s= Category.create! :category_name=>"Comics"
t= Category.create! :category_name=>"Art"
u= Category.create! :category_name=>"Cookbooks"
v= Category.create! :category_name=>"Diaries"
w= Category.create! :category_name=>"Journals"

admin =  AdminUser.create! (email: 'admin@example.com' ,password: 'password', password_confirmation: 'password')