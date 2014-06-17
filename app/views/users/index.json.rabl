object false

child @users do
  a = @fields[:users] || [ :id, :name, :email ]
  attributes *a

  node :href do |user|
    user_url(user)
  end
end

node :meta do
  { "client-ids" => true }
end
