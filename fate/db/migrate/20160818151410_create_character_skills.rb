class CreateCharacterSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :character_skills do |t|
      t.integer :character_id
      t.integer :athletics
      t.integer :endurance
      t.integer :conviction
      t.integer :discipline
      t.integer :weapons
      
      t.timestamps 
    end
  end
end
