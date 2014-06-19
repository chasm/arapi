class Tag < ActiveRecord::Base
  default_scope -> { order('created_at ASC') }
  has_and_belongs_to_many :articles

  validates :name, presence: true, uniqueness: true
end
