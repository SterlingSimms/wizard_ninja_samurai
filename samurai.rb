require_relative "human"

class Samurai < Human
    def initialize
        @strength = 7
        @intelligence = 4
        @stealth = 4
        @health = 130
    end
end

samurai1 = Samurai.new
samurai2 = Samurai.new
samurai1.attack(samurai2)
samurai2.display_health