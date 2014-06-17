class ApplicationController < ActionController::Base
  before_action :set_attrs

  def set_attrs
    @fields = {}
    @include = {}
  end
end
