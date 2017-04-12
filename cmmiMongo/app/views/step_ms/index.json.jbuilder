json.array!(@step_ms) do |step_m|
  json.extract! step_m, :id, :n_step, :t_format, :t_type
  json.url step_m_url(step_m, format: :json)
end
