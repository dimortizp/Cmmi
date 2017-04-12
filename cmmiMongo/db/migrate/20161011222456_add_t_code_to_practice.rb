class AddTCodeToPractice < ActiveRecord::Migration
  def change
    add_column :practices, :t_code, :string
  end
end
