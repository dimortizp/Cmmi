json.array!(@stepouts) do |stepout|
  json.extract! stepout, :id, :n_step, :t_format
  json.url stepout_url(stepout, format: :json)
end
