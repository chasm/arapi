object false

child @jobs do
  attributes :id, :starts_on, :ends_on

  node :links do |job|
    {
      user: job.user.id,
      duty: job.duty.id
    }
  end

  node :href do |job|
    job_url(job)
  end
end

node :links do
  {
    users: users_url + "/{users.id}",
    duties: duties_url + "/{duties.id}"
  }
end

node :meta do
  { "client-ids" => true }
end
