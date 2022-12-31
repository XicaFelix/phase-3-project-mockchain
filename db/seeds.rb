puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    # create Users
    User.create(
        name: Faker::Internet.user_name,
        currency: Faker::Currency.name,
        cash: rand(5000..10000)
    )

    3.times do
        Coin.create(
            name: Faker::CryptoCoin.coin_name,
            price: rand(280..1000),
            user_id: user.id
        )

        Transaction.create(
            type: 'buy',
            quantity: rand(4..10),
            price: rand(1000..10000),
        )

        Transaction.create(
            type: 'sell',
            quantity: rand(1..3),
            price: rand(200..1000)
        )
    end
end

puts "✅ Done seeding!"
