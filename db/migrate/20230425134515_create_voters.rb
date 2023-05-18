class CreateVoters < ActiveRecord::Migration[7.0]
  def change
    create_table :voters do |t|
      t.string :VoterPESEL
      t.string :VoterName
      t.string :VoterSurname
      t.date :VoterBirth

      t.timestamps
    end
  end
end
