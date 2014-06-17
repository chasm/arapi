class User < ActiveRecord::Base
  has_many :articles
  has_many :comments
  has_many :jobs, dependent: :destroy
  has_many :duties, through: :jobs
end
