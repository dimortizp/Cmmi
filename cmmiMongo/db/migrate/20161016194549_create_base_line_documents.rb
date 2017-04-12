class CreateBaseLineDocuments < ActiveRecord::Migration
  def change
    create_table :base_line_documents do |t|
      t.string :t_document
      t.string :t_state
      t.integer :n_version

      t.timestamps null: false
    end
  end
end
