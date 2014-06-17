object false

child @comments do
  a = @fields[:comments] || [ :id, :body ]
  attributes *a

  node :href do |comment|
    comment_url(comment)
  end
end

node :meta do
  { "client-ids" => true }
end
