class User < ActiveRecord::Base
    has_many :coins
    has_many :coin_transactions, through: :coins

end