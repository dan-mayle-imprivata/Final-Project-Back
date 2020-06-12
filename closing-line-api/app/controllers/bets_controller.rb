class BetsController < ApplicationController

    def index
        bets = Bet.all 
        render json: bets
    end

    def create
        
    end

    def show
        render json: bet
    end

    def update
        if bet.update(bet_params)
            render json:bet
        else
            render json: {errors:bet.errors.full_messages}
        end
    end

    def destroy
        bet.destroy
    end

    private

    def bet_params
        params.require(:bets).permit(:amount,:odds,:bet_type,:correct_bet)
    end

    def find_bet
        bet = Bet.find(params[:id])
    end
end
