json.array!(@project_ns) do |project_n|
  json.extract! project_n, :id, :t_name
  json.url project_n_url(project_n, format: :json)
end
