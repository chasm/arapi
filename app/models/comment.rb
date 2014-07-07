class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :article
  belongs_to :user
  belongs_to :comment
  has_many :comments, dependent: :destroy

  field :id
  field :body
end
