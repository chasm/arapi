class DutiesController < RestController

  protected

  def configure_controller
    config[:display] = [ :title ]
    config[:require] = [ :id ]
    config[:permit]  = [ :title ]
    config[:include] = [ :users, :jobs ]
  end
end
