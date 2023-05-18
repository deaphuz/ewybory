class ElectionOrganizer < ApplicationRecord
    belongs_to :Election
    belongs_to :Organizer
end
