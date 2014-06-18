class UsersController < RestController

  protected

  def get_includes
    []
  end

  def object_params
    params.require(:user).permit( :title, :body )
  end
end
