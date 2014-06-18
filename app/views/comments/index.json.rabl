object false

child @objects do
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
    "comments.user" => users_url + "/{comments.user}",
    "comments.article" => articles_url + "/{comments.article}",
    "comments.comment" => comments_url + "/{comments.comment}",
    "comments.comments" => comments_url + "/{comments.comments}"
  }
end

node :meta do
  { "client-ids" => true }
end
