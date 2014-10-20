class Week < ActiveRecord::Base
  has_many :injuries
  has_many :stats
end
