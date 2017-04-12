class CreateBaseLines < ActiveRecord::Migration
  def change
    create_table :base_lines do |t|
      t.string :t_name
      t.string :t_state

      t.timestamps null: false
    end
  end
end
