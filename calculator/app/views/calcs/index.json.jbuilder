json.array!(@calcs) do |calc|
  json.extract! calc, :id, :result
  json.url calc_url(calc, format: :json)
end
