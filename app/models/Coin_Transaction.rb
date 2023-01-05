class CoinTransaction < ActiveRecord::Base
    belongs_to :coin
    belongs_to :user
    # delegate :user, to: :coin, prefix: :coin
    has_one :seller, through: :coin, :source => 'user'


end