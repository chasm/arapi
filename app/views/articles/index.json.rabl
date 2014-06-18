object false

child @objects do
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

child @comments do
  attributes :id, :body

  node :links do |comment|
    {
      user: comment.user.id,
      comments: comment.comments.map {|c| c.id }
    }
  end

  node :href do |comment|
    comment_url(comment)
  end
end

node :links do
  {
    "articles.user" => users_url + "/{articles.user}",
    "articles.comments" => comments_url + "/{articles.comments}",
    "comments.user" => users_url + "/{comments.user}",
    "comments.comments" => comments_url + "/{comments.comments}"
  }
end

node :meta do
  { "client-ids" => true }
end
