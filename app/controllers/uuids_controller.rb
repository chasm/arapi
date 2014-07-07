class UuidsController < ApplicationController

  def create
    @uuids = get_uuids(
      (params[:num] || "1").to_i
    )
  end

  private

  def get_uuids(num)
    (1..num).map do
      SecureRandom.uuid
    end
  end
end
