class FightsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        fights = Fight.all 
        render json: fights
    end

    def create
        
    end

    def show
        render json: fight
    end

    def update
        if fight.update(fight_params)
            render json:fight
        else
            render json: {errors:fight.errors.full_messages}
        end
    end

    def destroy
        fight.destroy
    end

    private

    def fight_params
        params.require(:fights).permit(:competitor_one,:competitor_two,:rounds,:result)
    end

    def find_bet
        fight = Fight.find(params[:id])
    end
end
