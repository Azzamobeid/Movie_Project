class Crew < ApplicationRecord
  has_and_belongs_to_many :movies
  
end
