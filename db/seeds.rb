require 'faker'

20.times do |i|
    Item.create(title: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 0..1000.0, as_string: true), description: Faker::Marketing.buzzwords)
end
