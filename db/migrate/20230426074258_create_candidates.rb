class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :CandidateName
      t.string :CandidateSurname
      t.date :CandidateBirth

      t.timestamps
    end
  end
end
