class NamespaceProductImports < ActiveRecord::Migration
  def up
    rename_table :product_imports, :spree_product_imports
  end

  def down
    rename_table :spree_product_imports, :product_imports
  end
end
