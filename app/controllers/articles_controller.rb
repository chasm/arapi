class ArticlesController < RestController
  before_action :get_article, only: [ :update, :destroy ]

  def index
    @articles = if params[:ids]
      Article.where(:id.in => params[:ids].split(","))
    else
      Article.all.entries
    end

    @articles = [] unless @articles

    @comments = @articles.map {|a| a.comments }.flatten

    head :not_found if @articles.empty?
  end

  def create_or_replace
    @article = Article.new( article_params.merge( id: params[:id] ) )

    head :unprocessable_entity unless @article.valid?

    begin
      if old = Article.find_by( id: params[:id] )
          old.destroy
          @article.save
          head :no_content
      else
        @article.save
        @articles = [ @article ]
        puts "@articles", @articles.inspect
        render :index, status: :created
      end
    rescue
      head :internal_server_error
    end
  end

  def update
    if @article.update_attributes( article_params )
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  def destroy
    if @article.destroy
      head :no_content
    else
      head :internal_server_error
    end
  end

  protected

  def get_article
    head :not_found unless @article = Article.find_by( id: params[:id] )
  end

  def article_params
    params.require(:article).permit(:id, :title, :body)
  end
end
