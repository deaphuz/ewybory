class VoterGroup < ApplicationRecord
    belongs_to :Voter
    belongs_to :Group
end