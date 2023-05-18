class GroupElection < ApplicationRecord
    belongs_to :Election
    belongs_to :Group
end