class ArticlesController < RestController

  def index
    sql = %{
      SELECT * FROM articles LEFT JOIN comments
      ON articles.id = comments.article_id
      ORDER BY articles.created_at ASC LIMIT 3 OFFSET 2;
    }.squish

    @articles = ActiveRecord::Base.connection.execute(sql).to_a
  end

  protected

  def get_includes
    [:tags, :user, {comments: [ :comments, :user, :article]}]
  end

  def object_params
    params.require(:article).permit( :title, :body )
      .merge(:user_id => User.first.id) # THIS IS CHEATING!!!
  end
end
