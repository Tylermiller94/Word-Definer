class Definition
  @@definitions = []

  attr_accessor :definition

  def initialize (definition)
    @definition = definition
  end

  def Definition.all
    @@definitions
  end
end
