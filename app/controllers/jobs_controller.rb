class JobsController < RestController

  protected

  def object_params
    params.require(:job).permit( :title, :body )
  end
end
