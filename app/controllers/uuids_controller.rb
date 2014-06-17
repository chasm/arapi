class UuidsController < ApplicationController

  def create
    num = params[:num] || "1"

    render json: get_uuids(num.to_i)
  end

  private

  def get_uuids(num)
    (1..num).map do
      ActiveRecord::Base.connection
        .raw_connection
        .exec("select uuid_generate_v4();")
        .field_values("uuid_generate_v4")
        .first
    end
  end
end
