json.extract! item, :id, :name, :price, :category, :caloriesPerServing, :glutenFree, :containsNuts, :description, :image, :created_at, :updated_at
json.url item_url(item, format: :json)
