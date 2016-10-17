class AddContainsProcessToStep < ActiveRecord::Migration
  def change
    add_column :steps, :contains_process, :boolean
    add_column :steps, :id_first_step_inside, :integer
  end
end
