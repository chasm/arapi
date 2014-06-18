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
    "jobs.user" => users_url + "/{jobs.user}",
    "jobs.duty" => duties_url + "/{jobs.duty}"
  }
end

node :meta do
  { "client-ids" => true }
end
