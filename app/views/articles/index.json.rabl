object false

child @articles do
  a = @fields[:articles] || [ :id, :title, :body ]
  attributes *a

  node :href do |article|
    article_url(article)
  end
end

node :meta do
  { "client-ids" => true }
end
