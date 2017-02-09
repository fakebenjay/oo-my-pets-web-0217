class Cat < Animal
  DEFAULT_LIVES = 9
  attr_reader :lives

  def initialize(name, lives=9)
    super(name)
    @lives = lives
  end
end
