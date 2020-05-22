class Food < ApplicationRecord


  def  self.get_foods_list(food)
    protein = 'food["foodNutrients"][0]'
    carbohydrates = 'food[foods]["foodNutrients"]["name"]["carbohydrate, by difference"]["amount"]'
    fats = 'food[foods]["foodNutrients"]["name"]["Total lipid (fat)"]["amount"]'
    self.create(
        name: food["description"] ,
        protein: "#{protein}",
        carbohydrates:  "#{carbohydrates}",
        fats: "#{fats}"
    )
  end
end
