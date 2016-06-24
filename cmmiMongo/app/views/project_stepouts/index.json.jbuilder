json.array!(@project_stepouts) do |project_stepout|
  json.extract! project_stepout, :id, :n_step, :n_project, :t_document
  json.url project_stepout_url(project_stepout, format: :json)
end
