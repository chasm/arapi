class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :links, :href

  has_one :article, serializer: MinimalArticleSerializer
  has_one :user, serializer: MinimalUserSerializer
  has_many :comments

  def links
    {
      articles: articles_url + "/{articles.id}",
      users: users_url + "/{users.id}",
      comments: comments_url + "/{comments.id}"
    }
  end

  def href
    comment_url(object)
  end

end
