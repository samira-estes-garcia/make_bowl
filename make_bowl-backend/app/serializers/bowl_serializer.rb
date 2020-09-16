class BowlSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :quantity, :total_price
  has_many :ingredients
end
