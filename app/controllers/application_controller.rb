class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup

  # Setup global state for response
  def setup
    @response ||= {}
  end

  # Renders the response object as json with proper request status
  def render_json(status=200)
    # If successful, render given status
    if @response[:errors].nil?
      render json: @response, status: status
    else
      # If not successful, render with status from ErrorCodes module
      render json: @response, status: ErrorCodes.const_get(@response[:errors][:code])[:status]
    end
  end

  # Generates an error object from code, message and error list
  def error_msg(code=ErrorCodes::INTERNAL_SERVER_ERROR, detail="Unspecified error", errors = nil, data = nil)
    @response[:errors] = {
      code: code[:code],
      detail: detail,
      errors: errors,
      data: data
    }
  end

end
