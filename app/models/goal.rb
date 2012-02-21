class Goal < ActiveRecord::Base
  belongs_to :goalable, :polymorphic => true, :counter_cache => true
end
