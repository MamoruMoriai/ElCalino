class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  
  class Forbidden < StandardError; end
  class NotFound < StandardError; end

  rescue_from Exception, with: :rescue_500
  rescue_from ActionController::RoutingError, with: :rescue_404
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_404
  rescue_from ActionController::ParameterMissing, with: :rescue_400
  rescue_from Forbidden, with: :rescue_403
  rescue_from NotFound, with: :rescue_404


  private

  def rescue_400(exception)
    render "errors/bad_request", status: 400, layout: "error", formats: [:html]
  end

  def rescue_403(exception)
    render "errors/forbidden", status: 403, layout: "error", formats: [:html]
  end

  def rescue_404(exception)
    render "errors/not_found", status: 404, layout: "error", formats: [:html]
  end

  def rescue_500(exception)
    render "errors/internal_server_error", status: 500, layout: "error", formats: [:html]
  end

  #ユーザ認証
  def chief
    Chief.find_by(id: session[:chief_id]) if session[:chief_id]
  end
  helper_method :chief

  def login_required
    raise Forbidden unless chief
  end

end
