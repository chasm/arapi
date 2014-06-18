class UsersController < RestController

  protected

  def object_params
    params.require(:user).permit( :title, :body )
  end
end
