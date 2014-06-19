class JobsController < RestController

  protected

  def configure_controller
    config[:display] = [ :starts_on, :ends_on ]
    config[:require] = [ :id, :duty_id, :user_id ]
    config[:permit]  = [ :starts_on, :ends_on ]
    config[:include] = [ :user, :duty ]
  end
end
