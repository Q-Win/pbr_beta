class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :ingredients, :directions, :notes
end
