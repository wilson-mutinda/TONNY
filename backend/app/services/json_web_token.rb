require 'jwt'

class JSON_WEB_TOKEN
  SECRET_KEY = ENV['SECRET_KEY'] || Rails.application.secret_key_base
  # encode_token
  def encode_token(user_id, flag, exp=30.minutes.from_now)
    payload = {
      user_id: user_id,
      exp: exp.to_i,
      flag: flag
    }
    JWT.encode(payload, SECRET_KEY)
  end

  def decode_token(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new(decoded)
  rescue JWT::ExpiredSignature
    raise StandardError, 'Token Expired!'
  rescue JWT::DecodedError
    raise StandardError, 'Invalid Token!'
  end
end