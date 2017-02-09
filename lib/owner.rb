require 'dog.rb'
require 'cat.rb'
require 'fish.rb'
require 'animal.rb'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    self.all.count
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      fishes:[],
      cats:[],
      dogs:[]
    }
    @@all << self
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    pets.values.flatten.each do |pet|
      pet.mood = DEFAULT_STATE
    end
  end

  def say_species
    "I am a #{species}."
  end
end

#class Person
#  def self.new(name)
#    person = Person.allocate
#    person.initialize(name)
#  end
#end
