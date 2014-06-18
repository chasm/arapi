object false

child @objects do
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
    "duties.users" => users_url + "/{duties.users}",
    "duties.jobs" => jobs_url + "/{duties.jobs}"
  }
end

node :meta do
  { "client-ids" => true }
end
