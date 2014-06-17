object false

child @duties do
  a = @fields[:duties] || [ :id, :title ]
  attributes *a

  node :href do |duty|
    duty_url(duty)
  end
end

node :meta do
  { "client-ids" => true }
end
