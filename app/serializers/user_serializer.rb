class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :bets
  # ^^ we would like to include fighter names serialized inside of bet
  # rename pieces of state the same as backend

  
  #def model_name
  #  return User
  #end
  
end
