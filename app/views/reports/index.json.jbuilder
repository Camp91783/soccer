json.array!(@reports) do |report|
  json.extract! report, :id, :team_name, :location
  json.url report_url(report, format: :json)
end
