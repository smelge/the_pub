require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup()
    # [drink, price, alcoholism %]
    @drink1 = Drink.new("Gin and Tonic",3,4)
    @drink2 = Drink.new("Irn Bru on the rocks", 4, 0)
    @drink3 = Drink.new("Pint of Whisky",600,100)
  end

  def test_alcohol_name()
    assert_equal("Gin and Tonic",@drink1.drink)
  end

  def test_alcohol_price()
    assert_equal(600,@drink3.price)
  end

  def test_alcohol_level()
    assert_equal(0, @drink2.alcohol_level)
  end


end
