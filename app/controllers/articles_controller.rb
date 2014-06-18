class ArticlesController < RestController

  # def index
  #   # super
  #   #
  #   # @comments =  @objects.map {|a| a.comments }.flatten.uniq
  # end

  protected

  def get_includes
    [:tags, :user, {comments: [ :comments, :user, :article]}]
  end

  def object_params
    params.require(:article).permit( :title, :body )
  end
end
