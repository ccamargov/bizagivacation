class Api::ApiController < ActionController::Base

  def validate_api_key(api_key)
    if user = User.where("api_key = ?", api_key).any?
      return true
    else
      return false
    end
  end

end
