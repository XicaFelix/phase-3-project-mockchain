class Coin < ActiveRecord::Base
belongs_to :user, foreign_key: true
has_many :cointransactions

end