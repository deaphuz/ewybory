class CreateOrganizers < ActiveRecord::Migration[7.0]
  def change
    create_table :organizers do |t|
      t.string :name
      t.string :surname
      t.date :birth
      t.string :password

      t.timestamps
    end
  end
end
