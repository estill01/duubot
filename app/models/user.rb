class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :items
  has_many :responses, :as => :respondable
  has_many :responses, :through => :items, :as => :respondable
end
