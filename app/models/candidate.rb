class Candidate < ApplicationRecord
    has_many :Results
    has_many :Elections, through: :Results
end