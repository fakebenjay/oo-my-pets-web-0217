require 'cat.rb'
require 'dog.rb'
require 'fish.rb'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    self.name = name
    @species = "human"
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    return fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    return cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    return dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
