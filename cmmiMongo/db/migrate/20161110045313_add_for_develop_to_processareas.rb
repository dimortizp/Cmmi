class AddForDevelopToProcessareas < ActiveRecord::Migration
  def change
    add_column :processareas, :for_develop, :boolean
  end
end
