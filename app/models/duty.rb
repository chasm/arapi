class Duty < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :users, through: :jobs
end
