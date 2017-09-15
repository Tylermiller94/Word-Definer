class Word
  attr_accessor(:word, :id)
  @@words = []

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @id = @@words
  end
end
