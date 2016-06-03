json.array!(@project_steps) do |project_step|
  json.extract! project_step, :id, :n_realtime, :n_estimatedTime, :n_completionPercentage, :t_state
  json.url project_step_url(project_step, format: :json)
end
