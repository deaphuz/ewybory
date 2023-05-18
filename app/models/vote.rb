class Vote < ApplicationRecord
    belongs_to :Voter
    belongs_to :Election
end