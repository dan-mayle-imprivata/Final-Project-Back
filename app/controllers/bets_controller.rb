class BetsController < ApplicationController

    def index
        bets = Bet.all 
        render json: bets
    end
# finish this create out
    def create
        # byebug
        @bet = Bet.create(bet_params)

        if @bet.valid?
            @bet.save
            render json: BetSerializer.new(@bet).to_json
        else
            render json: {errors: @bet.errors.full_messages}
        end
    end

    def show
        render json: bet
    end

    def update
        if bet.update(bet_params)
            render json: bet
        else
            render json: {errors:bet.errors.full_messages}
        end
    end

    def destroy
        bet.destroy
    end

    #def user_bets
    #    @user = User.find(params[:id])
     #   render json: {bets: @user.bets}
    #end

    private

    def bet_params
        params.require(:bet).permit(:user_id,:fight_id,:fighter,:amount,:odds,:bet_type,:correct_bet)
    end

    def find_bet
        bet = Bet.find(params[:id])
    end
end
