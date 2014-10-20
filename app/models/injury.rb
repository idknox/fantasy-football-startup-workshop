class Injury < ActiveRecord::Base
  belongs_to :player
  belongs_to :week
end
