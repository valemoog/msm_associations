class Actor < ApplicationRecord

  has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")
end
