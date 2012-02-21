class User < ActiveRecord::Base
  attr_accessible :username, :email, :password
  authenticates_with_sorcery!

  has_many :items
  has_many :responses, :as => :respondable
  has_many :responses, :through => :items, :as => :respondable

  has_many :agendas

  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true
  validates :password, :presence => true,
                       :length => {:minimum => 4,
                                   :message => 
                                     "Passwrod must be at least 4 characters long"
                                  }

end
