class CreateGroupElections < ActiveRecord::Migration[7.0]
  def change
    create_table :group_elections do |t|
      t.belongs_to :Group, index: true
      t.belongs_to :Election, index: true

      t.timestamps
    end
  end
end
