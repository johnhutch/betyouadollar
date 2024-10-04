json.extract! profile, :id, :user_id, :name, :venmo, :paypal, :cashapp, :favorite_team, :created_at, :updated_at
json.url profile_url(profile, format: :json)
