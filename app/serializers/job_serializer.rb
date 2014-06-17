class JobSerializer < ActiveModel::Serializer
  attributes :id, :starts_on, :ends_on, :links, :href

  has_one :user, embed: :id, include: false, key: :user
  has_one :duty, embed: :id, include: false, key: :duty

  def links
    {
      users: users_url + "/{users.id}",
      duties: duties_url + "/{duties.id}"
    }
  end

  def href
    job_url(object)
  end
end
