class CommentsController < RestController

  protected

  def configure_controller
    config[:display] = [ :body ]
    config[:require] = [ :id, :article_id, :comment_id, :user_id ]
    config[:permit]  = [ :body ]
    config[:include] = [ :user, :article, :comment, :comments ]
  end
end
