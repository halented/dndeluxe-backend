class Character < ApplicationRecord
    belongs_to :user
    belongs_to :game
    has_many :CharacterNotes, :class_name => 'Note'
end
