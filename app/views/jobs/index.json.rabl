object false

child @jobs do
  a = @fields[:jobs] || [ :id, :starts_on, :ends_on ]
  attributes *a

  node :href do |job|
    job_url(job)
  end
end

node :meta do
  { "client-ids" => true }
end
