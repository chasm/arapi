class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :links, :href

  has_many :articles, embed: :id, include: false, key: :articles

  def links
    {
      articles: articles_url + "/{articles.id}"
    }
  end

  def href
    tag_url(object)
  end
end
