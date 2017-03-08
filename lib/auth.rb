class Auth

  def self.create_token(user)
    payload = {user: JSON.parse(user.to_json)}
    token = JWT.encode(payload, 'my-app', 'HS256')
  end

  def self.decode_token(token)
    # binding.pry
    JWT.decode(token, 'my-app', true, { :algorithm => 'HS256' })
  end

end
