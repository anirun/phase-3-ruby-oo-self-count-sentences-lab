require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end
  
  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!]/)
    fixed_array = array.reject{|element| element.empty?}
    return fixed_array.length
  end
end