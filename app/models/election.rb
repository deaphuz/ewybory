class Election < ApplicationRecord
    has_many :GroupElections
    has_many :Groups, through: :GroupElections
    has_many :Votes
    has_many :Voters, through: :Votes
    has_many :Results
    has_many :Candidates, through: :Results
    has_many :ElectionOrganizers
    has_many :Organizers, through: :ElectionOrganizers
end