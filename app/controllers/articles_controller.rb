class ArticlesController < RestController

  protected

  def configure_controller
    config[:display] = [ :title, :body,  :tags ]
    config[:require] = [ :id, :user_id ]
    config[:permit]  = [ :title, :body ]
    config[:include] = [ :user, :tags, :comments ]
  end
end
