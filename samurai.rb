require_relative "human"

class Samurai < Human
    @@samurai = 0
    def initialize
        @strength = 12
        @intelligence = 4
        @stealth = 4
        @health = 200
        @@samurai += 1
    end
    def death_blow(target)
        if target.stealth > @stealth*2
            puts "He's too fast..."
        elsif target.health == 0
            puts "I will not attack a dead body"
        else 
            target.health = 0 
            @@samurai -= 1 if target.class.ancestors.include? Samurai
        end
        self
    end
    def meditate
        @@samurai += 1 if @health == 0
        @health = 200
        self
    end
    def how_many
        puts "There are #{@@samurai} of us"
        self
    end
end

samurai1 = Samurai.new
samurai2 = Samurai.new
samurai1.attack(samurai2)
samurai2.display_health
samurai2.death_blow(samurai1)
samurai1.display_health
samurai1.death_blow(samurai2)
samurai1.how_many
samurai1.meditate
samurai1.how_many

