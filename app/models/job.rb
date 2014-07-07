class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :duty
  belongs_to :user

  field :id
  field :starts_on, type: Date
  field :ends_on, type: Date
end
