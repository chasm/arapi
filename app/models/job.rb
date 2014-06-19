class Job < ActiveRecord::Base
  default_scope -> { order('created_at ASC') }
  belongs_to :duty
  belongs_to :user

  validates :starts_on, :duty_id, :user_id, presence: true
  validates_associated :duty, :user
end
