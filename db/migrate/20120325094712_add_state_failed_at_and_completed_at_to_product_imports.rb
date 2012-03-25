class AddStateFailedAtAndCompletedAtToProductImports < ActiveRecord::Migration
  def change
    add_column :product_imports, :state, :string
    add_column :product_imports, :failed_at, :datetime
    add_column :product_imports, :completed_at, :datetime
  end
end
