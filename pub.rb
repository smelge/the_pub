class Pub
  attr_reader :name, :drinks, :drunk_level,:age_limit
  attr_accessor :till

  def initialize(name,drinks)
    @name = name
    @drinks = drinks
    @till = 0
    @drunk_level = 100
    @age_limit = 18
  end
end
