class Api::V1::TeamsController < ApplicationController

    def index
    @teams = Team.all
        render json: @teams 
    end

    def create
        @team = Team.new(team_params)
        if @team.save
            render json: @team
        else
            render json: {error:'Ya done goofed, try again'}
        end
    end

    def show
        @team = Team.find(params[:id])
        render json: @team
    end

    def destroy
        @team = Team.find(params[:id])
        @team.destroy
    end


    private
    def team_params
        params.require(:team).permit(:name, :league)
    end


end
