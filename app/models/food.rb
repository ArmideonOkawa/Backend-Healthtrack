class Food < ApplicationRecord


  def  self.get_foods_list(food)
    protein = 'food["foodNutrients"][0][amount]'
    carbohydrates = 'food["foodNutrients"][1][amount]'
    fats = 'food["foodNutrients"][2][amount]'
    self.create(
        name: food["description"] ,
        protein: "#{protein}",
        carbohydrates:  "#{carbohydrates}",
        fats: "#{fats}"
    )
  end
end
