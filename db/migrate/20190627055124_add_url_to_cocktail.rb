class AddUrlToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :banner_url, :string
  end
end
