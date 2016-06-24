json.array!(@project_stepins) do |project_stepin|
  json.extract! project_stepin, :id, :n_step, :n_project, :t_document
  json.url project_stepin_url(project_stepin, format: :json)
end
