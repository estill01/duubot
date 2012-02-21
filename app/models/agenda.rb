class Agenda < ActiveRecord::Base
  attr_accessible :name, :description, :goals

  belongs_to :user
  has_many :goals, :as => :goalable

  has_many :situations
end
