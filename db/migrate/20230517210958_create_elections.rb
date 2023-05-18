class CreateElections < ActiveRecord::Migration[7.0]
  def change
    create_table :elections do |t|
      t.string :type
      t.datetime :startTime
      t.datetime :endTime
      t.integer :maxVotesPerVoter
      t.float :voterTurnout

      t.timestamps
    end
  end
end
