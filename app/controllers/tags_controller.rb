class TagsController < RestController

  protected

  def configure_controller
    config[:display] = [ :name ]
    config[:require] = [ :id ]
    config[:permit]  = [ :name ]
    config[:include] = [ :articles ]
  end
end
