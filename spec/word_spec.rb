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

    it ("returns the first id") do
      test_word = Word.new({:word => "test"})
      expect(test_word.word).to(eq("test"))
      expect(test_word.id).to(eq(1))
    end

    describe(".all") do
      it("shows the array of all saved words empty array") do
        test_word = Word.new({:word => "test"})
        expect(Word.all).to(eq([]))
      end
    end

    describe("#save") do
      it("saves the word into words array") do
        test_word = Word.new({:word => "test"})
        test_word.save
        expect(Word.all).to(eq([test_word]))
      end
    end

    describe(".clear") do
      it("saves the word into words array") do
        test_word = Word.new({:word => "test"})
        test_word.save
        Word.clear
        expect(Word.all).to(eq([]))
      end
    end

    describe(".find") do
      it("finds a word based of its id") do
        test_word = Word.new({:word => "test"})
        test_word.save
        test_word = Word.new({:word => "second"})
        test_word.save
        expect(Word.find(test_word.id)).to(eq(test_word))
      end
    end

    describe("#add_definition") do
      it ("adds the definition") do
        test_definition = Definition.new({:definition => "test inputted text"})
        test_definition.save
        test_word = Word.new({:word => "test"})
        test_word.save
        test_word.add_definition(test_definition)
        expect(test_word.definitions()).to(eq([test_definition]))
      end
    end
  end

  describe('find') do
    it('returns word with id paramenter as string') do
      new_word = Word.new({:name=> "test"})
      new_word.save()
      expect(Word.find(new_word.id())).to eq(new_word)
    end
  end

  describe('#add_definition') do
    it('saves definition to array') do
      new_word = Word.new({:name=> "test"})
      new_word.save()
      new_definition = Definition.new({:definition=> "to test"})
      new_word.add_definition(new_definition)
      expect(new_word.definitions()).to eq([new_definition])
    end
  end
