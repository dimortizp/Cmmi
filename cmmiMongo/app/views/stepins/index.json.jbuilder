json.array!(@stepins) do |stepin|
  json.extract! stepin, :id, :n_step, :t_format
  json.url stepin_url(stepin, format: :json)
end
