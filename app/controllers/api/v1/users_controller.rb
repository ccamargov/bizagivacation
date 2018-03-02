class Api::V1::UsersController < Api::ApiController

  #POST /user/login_user
  def login_user
    user = User.where("email = ?", params[:email]).first
    if user && user.password_is_valid?(params[:password])
      render status: 200, json: {
        remote_id: user.id,
        api_key: user.api_key,
        first_name: user.first_name,
        last_name: user.last_name
      }
    else
      render status: 403, json: {http_code: 403,  web_code: 1}
    end
  end

end
