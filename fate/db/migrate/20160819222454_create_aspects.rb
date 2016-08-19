class CreateAspects < ActiveRecord::Migration[5.0]
  def change
    create_table :aspects do |t|
      t.integer :character_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
