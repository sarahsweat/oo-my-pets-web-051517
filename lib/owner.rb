class Owner

  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@all_owners = []

  def initialize(name)
    @name = name
    @mood = "happy"
    @species = "human"
    @@all_owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners = []
  end

  def self.count
    @@all_owners.length
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(new_name)
    @pets[:fishes] << Fish.new(new_name)
  end

  def buy_cat(new_name)
    @pets[:cats] << Cat.new(new_name)
  end

  def buy_dog(new_name)
    @pets[:dogs] << Dog.new(new_name)
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
    @pets[:fishes].each do |fish_instance|
      fish_instance.mood = "nervous"
    end
    @pets[:cats].each do |cat_instance|
      cat_instance.mood = "nervous"
    end
    @pets[:dogs].each do |dog_instance|
      dog_instance.mood = "nervous"
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end








end
