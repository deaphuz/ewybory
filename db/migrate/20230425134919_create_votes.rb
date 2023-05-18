class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.belongs_to :Voter, index: true
      t.belongs_to :Election, index: true

      t.timestamps
    end
  end
end
