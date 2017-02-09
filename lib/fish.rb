class Fish
  DEFAULT_STATE = "nervous"
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end
end
