class AddTCapabilityToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :t_capability, :string
  end
end
