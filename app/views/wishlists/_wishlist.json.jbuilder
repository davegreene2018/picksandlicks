json.extract! wishlist, :id, :wish_date, :wishstatus, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
