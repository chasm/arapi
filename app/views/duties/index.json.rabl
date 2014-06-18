object false

child @duties do
  attributes :id, :title

  node :links do |duty|
    {
      users: duty.users.map {|u| u.id },
      jobs: duty.jobs.map {|j| j.id }
    }
  end

  node :href do |duty|
    duty_url(duty)
  end
end

node :links do
  {
    users: users_url + "/{users.id}",
    jobs: jobs_url + "/{jobs.id}"
  }
end

node :meta do
  { "client-ids" => true }
end
