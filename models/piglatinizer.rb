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
      if word[0] == "a"||word[0] =="e"||word[0] == "O"||word[0] =="i"||word[0] =="o"||word[0] =="u"||word[0] =="A"||word[0] =="I"||word[0] =="E"||word[0] =="U"
        word += "way"

      else
        binding.pry
        first= word.slice(0)
        word.slice!(0)
        word += first
        word += "ay"

      end
    end

    newarray.join(" ")

  # else
  # end

  end
end
