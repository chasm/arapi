class Tag
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id
  field :name
end
