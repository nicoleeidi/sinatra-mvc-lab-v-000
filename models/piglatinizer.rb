class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text=text
  end
  def convert
    #if text.include?(" ")
      array= @text.split(" ")
    newarray= array.map do |word|
#binding.pry
      if word[0] != "a"||"e"||"i"||"o"||"u"||"A"||"I"||"E"||"U"||"O"
      first= word.slice(0)
      word.slice!(0)
      word += first
      word += "ay"

      else

      word += "way"

      end
    end

    newarray.join(" ")

  # else
  # end

  end
end
