class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :location
      t.string :group_name
      t.text :details

      t.timestamps
    end
  end
end
