class JobSerializer < ActiveModel::Serializer
  attributes :id, :starts_on, :ends_on
end
