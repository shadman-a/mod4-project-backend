class Character < ApplicationRecord
    has_many :game_plays
    has_many :users, through: :game_plays
end
