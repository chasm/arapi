class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :tags, :links, :href

  has_one :user, serializer: MinimalUserSerializer
  has_many :comments

  def tags
    object.tags.map {|t| t.name }
  end

  def links
    {
      user: users_url + "/{user.id}",
      comments: comments_url + "/{comments.id}"
    }
  end

  def href
    article_url(object)
  end
end
