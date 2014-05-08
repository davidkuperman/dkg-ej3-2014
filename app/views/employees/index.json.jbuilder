json.array!(@employees) do |employee|
  json.extract! employee, :name, :role, :salary
  json.url employee_url(employee, format: :json)
end