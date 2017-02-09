class Dog
  DEFAULT_STATE = "nervous"
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = DEFAULT_STATE
  end
end
