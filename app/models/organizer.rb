class Organizer < ApplicationRecord
    has_many :ElectionOrganizers
    has_many :Elections, through: :ElectionOrganizers
end
