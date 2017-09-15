require "word"
require "definition"
require "rspec"


describe(Word) do
  before() do
    Word
  end

  it ("returns the word") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
  end
end
