class AddTInitialsToProcessarea < ActiveRecord::Migration
  def change
    add_column :processareas, :t_initials, :string
    add_column :processareas, :t_category, :string
  end
end
