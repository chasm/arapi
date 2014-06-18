class TagsController < RestController

  protected

  def get_includes
    []
  end

  def object_params
    params.require(:tag).permit( :title, :body )
  end
end
