class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :category
  has_and_belongs_to_many :bowls
end
