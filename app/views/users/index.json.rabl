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
    articles: articles_url + "/{articles.id}",
    comments: comments_url + "/{comments.id}",
    jobs: jobs_url + "/{jobs.id}",
    duties: duties_url + "/{duties.id}"
  }
end

node :meta do
  { "client-ids" => true }
end
