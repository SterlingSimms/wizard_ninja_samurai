require_relative "human"

class Wizard < Human
    def initialize
        @strength = 3
        @intelligence = 8
        @stealth = 2
        @health = 90
    end
end

wizard1 = Wizard.new
wizard2 = Wizard.new
wizard1.attack(wizard2)
wizard2.display_health