json.array!(@formats) do |format|
  json.extract! format, :id, :t_name, :t_content
  json.url format_url(format, format: :json)
end
