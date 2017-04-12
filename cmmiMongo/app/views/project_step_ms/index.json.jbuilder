json.array!(@project_step_ms) do |project_step_m|
  json.extract! project_step_m, :id, :n_step, :n_project, :t_document, :t_type
  json.url project_step_m_url(project_step_m, format: :json)
end
