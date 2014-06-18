class ApplicationController < ActionController::Base
  before_action :set_attrs

  def set_attrs
    @fields = {}
    @include = {}
  end

  protected

  def is_authenticated?
    authenticate_or_request_with_http_token do |token, options|
      puts "TOKEN", token
      puts "session[:token]", session[:token]
      puts "==", token == session[:token]
      token == session[:token]
    end
  end
end
