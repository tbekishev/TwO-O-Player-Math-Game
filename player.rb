class Player
  attr_accessor :life, :name

  def initialize(name)
    @life = 3
    @name = name
  end

end
# p = Player.new
# puts p.life