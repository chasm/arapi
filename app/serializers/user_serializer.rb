class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :links, :href

  has_many :articles, embed: :id, include: false, key: :articles
  has_many :comments, embed: :id, include: false, key: :comments
  has_many :jobs, embed: :id, include: false, key: :jobs
  has_many :duties, embed: :id, include: false, key: :duties

  def links
    {
      articles: articles_url + "/{articles.id}",
      comments: comments_url + "/{comments.id}",
      jobs: jobs_url + "/{jobs.id}",
      duties: duties_url + "/{duties.id}"
    }
  end

  def href
    user_url(object)
  end
end
