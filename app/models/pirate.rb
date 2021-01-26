
class Pirate
    attr_accessor :name, :weight, :height

    @@all = []

    def initialize(stats)
        stats.each do |key, value|
            self.send(("#{key}="), value)
        end
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end

