class User < ActiveRecord::Base
    has_many :coins
    has_many :transactions, through: :coins

end