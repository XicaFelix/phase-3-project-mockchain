require 'faker'

puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    # create Users
   user = User.create(
        name: Faker::Internet.user_name,
        password: Faker::Internet.password(max_length:10),
        avatar: Faker::Avatar.image,
        currency: Faker::Currency.name,
        cash: rand(5000..10000)
    )

    3.times do
       coin =  Coin.create(
            name: Faker::CryptoCoin.coin_name,
            price: rand(280..1000),
            user_id: user.id
        )

        Coin_Transaction.create(
            business_type: 'buy',
            quantity: rand(4..10),
            price: rand(1000..10000),
            coin_id: coin.id,
            user_id: user.id
        )

        Coin_Transaction.create(
            business_type: 'sell',
            quantity: rand(1..3),
            price: rand(200..1000),
            coin_id: coin.id,
            user_id: user.id
        )
    end
end

puts "✅ Done seeding!"
