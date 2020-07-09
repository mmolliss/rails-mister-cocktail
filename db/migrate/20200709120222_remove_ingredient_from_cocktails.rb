class RemoveIngredientFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_column(:cocktails, :ingredient_id)
    # remove_reference :cocktails, :ingredient, null: false, foreign_key: true
  end
end
