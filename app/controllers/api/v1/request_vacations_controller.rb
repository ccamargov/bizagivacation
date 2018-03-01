class Api::V1::RequestVacationsController < Api::ApiController

  #GET /request_vacations/index
  def index
    if validate_api_key(params[:api_key])
      render status: 200, json: {request_vacations: RequestVacation.all.as_json}
    else
      render status: 200, json: {errors: [{http_code: 200,  web_code: 3}]}
    end
  end

end
