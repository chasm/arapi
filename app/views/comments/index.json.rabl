object false

child @comments do
  attributes :id, :body

  node :links do |comment|
    if comment.article.nil?
      {
        user: comment.user.id,
        comment: comment.comment.id,
        comments: comment.comments.map {|c| c.id }
      }
    else
      {
        user: comment.user.id,
        article: comment.article.id,
        comments: comment.comments.map {|c| c.id }
      }
    end
  end

  node :href do |comment|
    comment_url(comment)
  end
end

node :links do
  {
    users: users_url + "/{users.id}",
    article: articles_url + "/{articles.id}",
    comments: comments_url + "/{comments.id}"
  }
end

node :meta do
  { "client-ids" => true }
end
