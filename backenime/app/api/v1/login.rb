# frozen_string_literal: true

module V1
  class Login < Grape::API
    resource :login do
      desc "Login"
      params do
        requires :username, type: String, desc: "Username"
        requires :password, type: String, desc: "Password"
      end
      get do
        user = User.authenticate_by(username: params[:username], password: params[:password])
        error!({ error: "Unauthorized" }, 401) unless user.present?
        user.set_authentication_token

        {
          login: user.login,
          authentication_token: user.authentication_token
        }
      end
    end

    resource :admin_login do
      desc "Admin Login"
      params do
        requires :login, type: String, desc: "Login of Administrator"
        requires :password, type: String, desc: "Password"
      end
      get do
        admin_user = AdminUser.authenticate_by(login: params[:login], password: params[:password])
        error!({ error: "Unauthorized" }, 401) unless admin_user.present?
        admin_user.set_authentication_token

        {
          login: admin_user.login,
          authentication_token: admin_user.authentication_token
        }
      end
    end
  end
end
