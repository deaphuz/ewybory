class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.belongs_to :Election, index: true
      t.belongs_to :Candidate, index: true
      t.integer :NumVotes

      t.timestamps
    end
  end
end
