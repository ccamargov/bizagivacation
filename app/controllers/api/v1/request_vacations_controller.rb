class Api::V1::RequestVacationsController < Api::ApiController

  #GET /request_vacations/get_all_requests
  def index
    if validate_api_key(params[:api_key])
      render status: 200, json: {request_vacations: RequestVacation.all.as_json}
    else
      render status: 200, json: {errors: [{http_code: 200,  web_code: 3}]}
    end
  end

  #POST /request_vacations/update_request_vacation
  def update_request_vacation
    if validate_api_key(params[:api_key])
      request_vacation = RequestVacation.where("id = ?", params[:id_remote]).first
      unless RequestVacation.nil?
        request_vacation.update_attributes(
          approved: params[:approved]
        )
        render status: 200, json: {request_vacation_updated: [{id: request_vacation.id}]}
      else
        render status: 200, json: {errors: [{http_code: 200,  web_code: 3}]}
      end
    else
      render status: 200, json: {errors: [{http_code: 200,  web_code: 3}]}
    end
  end

end
