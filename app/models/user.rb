class User < ActiveRecord::Base
  has_many :microblogs
end
