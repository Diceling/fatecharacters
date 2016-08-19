class CreateCharacterSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :character_skills do |t|
      t.integer :character_id
      t.integer :athletics
      t.integer :alertness
      t.integer :endurance
      t.integer :presence
      t.integer :conviction
      t.integer :discipline

      t.timestamps
    end
  end
end
