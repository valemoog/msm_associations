class Actor < ApplicationRecord

  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")

  has_many :characters
  has_many :movies, :through => :characters

  # has_many(:movie, :class_name => "Character", :foreign_key => "movie_id")


end
