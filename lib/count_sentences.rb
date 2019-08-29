require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else 
      false 
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false 
    end 
  end

  def count_sentences
    counter = 0
    string = self.split
    binding.pry
    string.each do |word|
      if word.include?(".")
        counter +=1
      elsif word.include?("?")
        counter += 1
      elsif word.include?("!")
        counter += 1
      end 
    end 
    return counter
  end
end