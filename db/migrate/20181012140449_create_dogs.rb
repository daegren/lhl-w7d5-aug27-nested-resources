class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :colour
      t.date :date_of_birth
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
