json.array!(@base_lines) do |base_line|
  json.extract! base_line, :id, :t_name, :t_state
  json.url base_line_url(base_line, format: :json)
end
