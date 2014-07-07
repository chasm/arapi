class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  has_many :comments, dependent: :destroy

  field :id
  field :title
  field :body
end
