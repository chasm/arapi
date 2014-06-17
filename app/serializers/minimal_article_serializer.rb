class MinimalArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :tags

  def tags
    object.tags.map {|t| t.name }
  end
end
