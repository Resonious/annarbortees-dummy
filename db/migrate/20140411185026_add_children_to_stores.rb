class AddChildrenToStores < ActiveRecord::Migration
  def change
  	add_column :spree_stores, :parent_id, :integer
  	add_index :spree_stores,  :parent_id
  end
end
