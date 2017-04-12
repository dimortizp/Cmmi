class AddParentIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :parent_id, :integer
  end
end
