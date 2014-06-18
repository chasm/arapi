class DutiesController < RestController

  protected

  def object_params
    params.require(:duty).permit( :title, :body )
  end
end
