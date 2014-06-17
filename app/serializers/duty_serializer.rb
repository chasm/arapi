class DutySerializer < ActiveModel::Serializer
  attributes :id, :title, :links, :href

  has_many :jobs, embed: :id, include: false, key: :jobs
  has_many :users, embed: :id, include: false, key: :users

  def links
    {
      jobs: jobs_url + "/{jobs.id}",
      users: users_url + "/{users.id}"
    }
  end

  def href
    duty_url(object)
  end
end
