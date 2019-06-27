class AddDosesToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_reference :cocktails, :dose, foreign_key: true
  end
end
