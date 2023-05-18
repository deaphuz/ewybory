class CreateElectionOrganizers < ActiveRecord::Migration[7.0]
  def change
    create_table :election_organizers do |t|
      t.belongs_to :Election, index: true
      t.belongs_to :Organizer, index: true
      t.timestamps
    end
  end
end
