class Coin < ActiveRecord::Base
belongs_to :user
has_many :coin_transactions

end