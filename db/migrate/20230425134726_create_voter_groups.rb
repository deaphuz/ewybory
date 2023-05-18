class CreateVoterGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :voter_groups do |t|
      t.belongs_to :Voter, index: true
      t.belongs_to :Group, index: true

      t.timestamps
    end
  end
end
