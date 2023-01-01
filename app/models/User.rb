class User < ActiveRecord::Base
    has_many :coins
    has_many :cointransactions, through: :coins

end