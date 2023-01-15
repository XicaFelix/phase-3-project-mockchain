class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/mockchain' do 
    output = User.all 
    output.to_json(include: {coin_transactions: {include: :coin}})
  end

  get '/mockchain/coins' do
    output = Coin.all 
    output.to_json
  end
  # Gets all data through coin transactions
  get '/mockchain/transactions' do 
    output = CoinTransaction.all
    output.to_json
  end

  get '/mockchain/:id' do 
    user_data = User.find(params[:id])
    user_data.to_json(include: {coin_transactions: {include: :coin}})
  end

  post '/mockchain/transactions/new' do 
    record = CoinTransaction.create(
      business_type: 'buy',
      quantity: rand(4..10),
      price: params[:price],
      coin_id: params[:coin_id],
      user_id: params[:user_id]
    )

    record.to_json
  end

  patch '/mockchain/transactions/:id' do 
    record = CoinTransaction.find(params[:id])
    record.update(
      business_type: 'buy',
      quantity: record.quantity,
      price: params[:price],
      coin_id: record.coin_id,
      user_id: params[:user_id]
    )

    record.to_json
  end

  delete '/mockchain/transactions/:id' do
    record = CoinTransaction.find(params[:id])
    record.destroy
    record.to_json
  end

  patch '/mockchain/:id' do 
    user = User.find(params[:id])
    user.update(
      name: user.name,
        password: user.password,
        avatar: user.avatar,
        currency: user.currency,
        cash: params[:cash]
    )

    user.to_json
  end
end
