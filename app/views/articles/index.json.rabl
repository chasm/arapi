object false

child @articles do
  attributes :id, :title, :body

  node :tags do |article|
    article.tags.map {|t| t.name }
  end

  node :links do |article|
    {
      user: article.user.id,
      comments: article.comments.map {|c| c.id }
    }
  end

  node :href do |article|
    article_url(article)
  end
end

node :links do
  {
    "articles.user" => users_url + "/{articles.user}",
    "articles.comments" => comments_url + "/{articles.comments}"
  }
end

node :meta do
  { "client-ids" => true }
end
