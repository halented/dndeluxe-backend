class Game < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters
    has_many :GameNotes, :class_name => 'Note'
end
