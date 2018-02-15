require 'test_helper'

class CoinTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #validating if these attribute exists within the coin type
  validates :Name,
  			prescence:true 

  validates :Amount,
  			prescence:true
  			numericality: true

  validates :Price,
  			prescence:true
  			numericality: true

  validates :Total,
  			prescence:true
  			numericality: true

  #Telling that the coin type belongs to the list			
  belongs_to :list
 

end
