class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/mockchain' do 
    output = User.all 
    output.to_json
  end

  get '/mockchain/coins' do
    output = Coin.all 
    output.to_json
  end
  # Gets all data through coin transactions
  get '/mockchain/transactions' do 
    output = Coin_Transaction.all
    output.to_json(include: {seller: {include: :coins}})
  end

  get '/mockchain/:id' do 
    user_data = User.find(params[:id])
    user_data.to_json(include: {coin_transactions: {include: :coin}})
  end
end
