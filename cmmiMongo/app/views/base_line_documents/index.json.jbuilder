json.array!(@base_line_documents) do |base_line_document|
  json.extract! base_line_document, :id, :t_document, :t_state, :n_version
  json.url base_line_document_url(base_line_document, format: :json)
end
