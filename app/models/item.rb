class Item < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  has_many :responses, :as => :respondable
end
