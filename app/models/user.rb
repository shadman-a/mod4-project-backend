class User < ApplicationRecord
    has_many :game_plays
    has_many :characters, through: :game_plays
end
