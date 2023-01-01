class Coin_Transaction < ActiveRecord::Base
    belongs_to :coin
    has_many :users, through: :coins

end