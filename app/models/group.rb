class Group < ApplicationRecord
    has_many :VoterGroups
    has_many :Voters, through: :VoterGroups
    has_many :GroupElections
    has_many :Elections, through: :GroupElections
end