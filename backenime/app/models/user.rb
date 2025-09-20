class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_authentication_token
    update!(authentication_token: SecureRandom.urlsafe_base64(nil, false))
  end

  def reset_authentication_token
    update!(authentication_token: nil)
  end
end
