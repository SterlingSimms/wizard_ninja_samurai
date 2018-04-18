require_relative "human"

class Ninja < Human
    def initialize
        @strength = 4
        @intelligence = 4
        @stealth = 20
        @health = 110
    end
    def get_away
        @health -= 15
        self
    end
    def pickpocket(target)
        if target.class.ancestors.include? Ninja
            get_away
            puts "Maybe I should find an easier target..."
            true
        else
           puts "This item is garbage!"
            false
        end
        self
    end
end

ninja1 = Ninja.new
ninja2 = Ninja.new
ninja1.attack(ninja2)
ninja2.display_health
ninja1.pickpocket(ninja2).display_health
