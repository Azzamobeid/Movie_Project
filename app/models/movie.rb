class Movie < ApplicationRecord
  has_and_belongs_to_many :crews
  has_many :ratings
end
