class Api::V1::PlayersController < ApplicationController

    before_action :set_team

    def index
     @players = @team.players
     render json: @players 
    end

    def create
        
        @player = @team.players.new(player_params)
        if @player.save
            render json: @team
        else 
            render json: {error:'Ya done goofed, try again'}
        end
    end

    def show
        @player = @team.players.find(params[:id])
        render json: @player
    end

    def destroy
        @player = @team.players.find(params[:id])
        @player.destroy
    end

    def set_team
        @team = Team.find(params[:team_id])
    end



    private
    def player_params
        params.require(:player).permit(:name, :age, :position, :team_id)
    end
end
