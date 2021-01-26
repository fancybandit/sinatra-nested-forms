
class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(stats)
        stats.each do |key, value|
            self.send(("#{key}="), value)
        end

        save
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

    def save
        @@all << self
    end
end

