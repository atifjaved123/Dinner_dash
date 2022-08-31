User.create!(email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true)

Category.create!(heading: 'Pizza', body: "It's so good, dough!", display: true)
Category.create!(heading: 'Pasta', body: 'We cannoli do so much in each vide', display: true)
Category.create!(heading: 'Desserts', body: 'Rock rails icecream', display: true)

10.times do |i|
pizza = Product.new(
name: 'Pizza',
description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
price: 11.99,
catering: true,
category: Category.find(1)
)
pasta = Product.new(
name: 'Pasta',
description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
price: 7.95,
catering: true,
category: Category.find(2)
)
dessert = Product.new(
name: 'Icecream',
description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
price: 3.00,
catering: true,
category: Category.find(3)
)

if i == 5
pizza.featured = true
pasta.featured = true
dessert.featured = true
end
pizza.save
pasta.save
dessert.save
end