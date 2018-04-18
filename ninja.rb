require_relative "human"

class Ninja < Human
    def initialize
        @strength = 4
        @intelligence = 4
        @stealth = 7
        @health = 110
    end
end

ninja1 = Ninja.new
ninja2 = Ninja.new
ninja1.attack(ninja2)
ninja2.display_health
