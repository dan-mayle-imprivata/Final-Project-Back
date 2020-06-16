class BetSerializer < ActiveModel::Serializer
    def fighters
        [object.fight.competitor_one, object.fight.competitor_two]
    end
    
    attributes :id, :amount, :odds, :bet_type, :correct_bet
 
    
    
    # ^^ we would like to include fighter names serialized inside of bet
    # rename pieces of state the same as backend
  
    
 end
  