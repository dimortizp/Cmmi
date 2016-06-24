json.array!(@documents) do |document|
  json.extract! document, :id, :n_format, :n_project, :n_version
  json.url document_url(document, format: :json)
end
