class JobsController < RestController

  protected

  def get_includes
    []
  end

  def object_params
    params.require(:job).permit( :title, :body )
  end
end
