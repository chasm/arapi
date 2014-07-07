class User
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :articles
  has_many :comments
  has_many :jobs, dependent: :destroy

  field :id
  field :name
  field :email
  field :salt
  field :fish
end
