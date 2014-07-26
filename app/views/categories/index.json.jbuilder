json.array!(@categories) do |category|
  json.extract! category, :id, :title_en, :title_fa, :description_en, :description_fa
  json.url category_url(category, format: :json)
end
