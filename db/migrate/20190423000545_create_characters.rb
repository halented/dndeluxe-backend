class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.belongs_to :game
      t.string :name
      t.string :race
      t.string :alignment
      t.string :image
      t.text   :details
      t.integer :level
      t.string :character_class
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :initiative
      t.integer :armor_class
      t.integer :speed
      t.integer :hit_points
      t.boolean :inspiration

      t.timestamps
    end
  end
end
