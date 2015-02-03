json.array!(@my_avatars) do |my_avatar|
  json.extract! my_avatar, :id, :health_xp, :stamina_xp, :strength_xp, :intelligence, :user_id
  json.url my_avatar_url(my_avatar, format: :json)
end
