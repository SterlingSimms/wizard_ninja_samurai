require_relative "human"

class Wizard < Human
    def initialize
        @strength = 3
        @intelligence = 15
        @stealth = 2
        @health = 70
    end
    def heal
        amount = @intelligence
        overheal = @health + amount > 70
        @health += amount if !overheal; @health = 70 if overheal
        self
    end
    def fireball(target)
        if target.class.ancestors.include? Human
            target.health -= @intelligence*3
            true
        else
            false
        end
        self
    end
end

wizard1 = Wizard.new
wizard2 = Wizard.new
wizard1.attack(wizard2)
wizard2.display_health
wizard1.fireball(wizard2)
wizard2.heal.display_health