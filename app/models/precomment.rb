class Precomment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  acts_as_votable 
end
