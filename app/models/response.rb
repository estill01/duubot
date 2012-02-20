class Response < ActiveRecord::Base
  belongs_to :respondable, :polymorphic => true, :counter_cache => true

#   has_many :understandings
#   has_many :scenarios
#   has_many :predictions
#   has_many :goal_recommendations
#   has_many :plans
#   has_many :requirements
#   has_many :secured_resources
#   has_many :commitments
#   has_many :general_resouces
# 
#   has_one :recommendation
end
