class RemoveDoseIdFromCocktails < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :dose_id
  end
end
