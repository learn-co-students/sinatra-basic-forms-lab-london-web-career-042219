class Puppy

    attr_accessor :name, :breed, :months_old

    @@all = []

    def initialize(name, breed, months_old)
        @name = name
        @breed = breed
        @months_old = months_old
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find { |puppy| puppy.name == name }
    end
    
end