object false

child @users do
  attributes :id, :name, :email

  node :links do |user|
    {
      articles: user.articles.map {|a| a.id },
      comments: user.comments.map {|c| c.id },
      jobs: user.jobs.map {|j| j.id },
      duties: user.duties.map {|d| d.id }
    }
  end

  node :href do |user|
    user_url(user)
  end
end

node :links do
  {
    "users.articles" => articles_url + "/{users.articles}",
    "users.comments" => comments_url + "/{users.comments}",
    "users.jobs" => jobs_url + "/{users.jobs}",
    "users.duties" => duties_url + "/{users.duties}"
  }
end

node :meta do
  { "client-ids" => true }
end
