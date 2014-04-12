json.array!(@mike_ann_kids) do |mike_ann_kid|
  json.extract! mike_ann_kid, :id, :first_name, :last_name, :age
  json.url mike_ann_kid_url(mike_ann_kid, format: :json)
end
