class CreateProjectSteps < ActiveRecord::Migration
  def change
    create_table :project_steps do |t|
      t.timestamp :n_realtime
      t.timestamp :n_estimatedTime
      t.float :n_completionPercentage
      t.string :t_state

      t.timestamps null: false
    end
  end
end
