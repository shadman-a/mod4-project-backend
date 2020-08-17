class GamePlaysController < ApplicationController

    def index
        game_plays = GamePlay.all
        render json: game_plays
    end

    def create
        game_play = GamePlay.create(game_play_params)
    end
    
    private

    def game_play_params
        params.require(:game_play).permit(:character_id, :user_id, :score)
    end
end
