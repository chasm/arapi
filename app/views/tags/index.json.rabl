object false

child @tags do
  a = @fields[:tags] || [ :id, :name ]
  attributes *a

  node :href do |tag|
    tag_url(tag)
  end
end

node :meta do
  { "client-ids" => true }
end
