class Animal
  DEFAULT_STATE = "nervous"
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
