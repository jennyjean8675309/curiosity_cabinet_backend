class ApplicationController < ActionController::API
  def secret_key
    'j3enenwhy'
  end

  #given a payload, returns a token
  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  #given a token, returns a payload
  def decode(token)
    JWT.decode(token, secret_key, true, {algorithm: 'HS256'})[0]
  end
end
