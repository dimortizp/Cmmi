class RemoveTDescriptionToProcessarea < ActiveRecord::Migration
  def change
    remove_column :processareas, :t_description, :string
  end
end
