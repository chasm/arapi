object false

node :links do
  {
    articles: articles_url,
    comments: comments_url,
    duties: duties_url,
    jobs: jobs_url,
    tags: tags_url,
    users: users_url,
    uuid: uuid_url
  }
end

node :meta do
  { "client-ids" => true }
end
