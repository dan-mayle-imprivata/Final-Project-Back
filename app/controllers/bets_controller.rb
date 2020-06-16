class BetsController < ApplicationController

    def index
        bets = Bet.all 
        render json: bets
    end
# finish this create out
    def create
        # byebug
        # new_fight = Fight.create_with(fight_params).find_or_create_by(id:params[:fight][:id])
        # saved_bet = new_fight.bets.create_with(bet_params).find_or_create_by(fight_id: params[:fight][:id])

        # if saved_bet.valid?
        #     saved_bet.save
        #     render json: saved_bet
        # else
        #     render json: {errors: saved_bet.errors.full_messages}
        # end

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

    #def user_bets
    #    @user = User.find(params[:id])
     #   render json: {bets: @user.bets}
    #end

    private

    def bet_params
        params.require(:bet).permit(:user_id,:fight_id,:amount,:odds,:bet_type,:correct_bet)
    end

    def fight_params
        params.require(:fights).permit(:competitor_one,:competitor_two,:rounds,:result)
    end

    def find_bet
        bet = Bet.find(params[:id])
    end
end
