class DutiesController < RestController

  protected

  def get_includes
    []
  end

  def object_params
    params.require(:duty).permit( :title, :body )
  end
end
