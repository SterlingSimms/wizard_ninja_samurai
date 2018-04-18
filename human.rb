class Human 
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def attack(target)
        if target.class.ancestors.include? Human
            target.health -= @strength*3
            true
        else
            false
        end
        self
    end
    def display_health
        p @health
        self
    end
end

human1 = Human.new
human2 = Human.new
human1.attack(human2).attack(human2)
# human2.display_health