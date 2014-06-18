class ApiController < ApplicationController
  before_action :is_authenticated?, except: [ :login ]

  def index
  end

  def login
    session[:token] = SecureRandom.urlsafe_base64
    render text: session[:token]
  end

  def logout
    session[:token] = nil
    head :no_content
  end
end
