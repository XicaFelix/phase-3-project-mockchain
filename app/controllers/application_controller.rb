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

  get '/mockchain/transactions' do 
    output = Coin_Transaction.all
    output.to_json
  end

end
