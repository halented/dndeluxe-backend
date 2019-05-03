class CharacterSerializer < ActiveModel::Serializer
    attributes :name, :race, :alignment, :image, :details, :level, :character_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :initiative, :armor_class, :speed, :hit_points, :inspiration, :user_id, :id
  end
  