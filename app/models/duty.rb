class Duty
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :jobs, dependent: :destroy

  field :id
  field :title
end
