class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.belongs_to :user
      t.string :location
      t.string :group_name

      t.timestamps
    end
  end
end
