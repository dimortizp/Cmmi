class AddTMadurityToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :t_madurity, :string
  end
end
