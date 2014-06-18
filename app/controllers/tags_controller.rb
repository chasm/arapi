class TagsController < RestController

  protected

  def object_params
    params.require(:tag).permit( :name )
  end
end
