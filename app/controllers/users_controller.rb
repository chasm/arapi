class UsersController < RestController

  protected

  def configure_controller
    config[:display] = [ :name, :email ]
    config[:require] = [ :id ]
    config[:permit]  = [ :name, :email ]
    config[:include] = [ :articles, :comments, :jobs, :duties ]
  end
end
