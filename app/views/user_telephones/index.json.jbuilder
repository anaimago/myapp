json.array!(@user_telephones) do |user_telephone|
  json.extract! user_telephone, :id, :phone_number, :state, :user_id, :phone_type, :phone_device, :phone_number_short
  json.url user_telephone_url(user_telephone, format: :json)
end
