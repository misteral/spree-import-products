class AddProductIdsToProductImports < ActiveRecord::Migration
  def change
    add_column  :product_imports, :product_ids, :text
  end
end
