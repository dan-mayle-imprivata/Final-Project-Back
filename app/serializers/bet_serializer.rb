class BetSerializer < ActiveModel::Serializer

    def opponent
        [object.fight.competitor_one, object.fight.competitor_two].select{|fighter| fighter != object.fighter}.first
    end
    
    attributes :id, :amount, :odds, :bet_type, :correct_bet, :fighter, :opponent
    # ^^ we would like to include fighter names serialized inside of bet
    # rename pieces of state the same as backend  
 end
  