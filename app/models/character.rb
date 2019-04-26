class Character < ApplicationRecord
    belongs_to :user
    belongs_to :game, optional: true
    has_many :character_notes, :class_name => 'Note'
end
