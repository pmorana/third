class Event < ActiveRecord::Base
  has_many :chats
  has_many :precomments
  has_many :postcomments
end
