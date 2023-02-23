require 'pry'

class String
  attr_accessor :words

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
    words = self.split(/[.?!]/).reject { |c| c.empty? }
    words.count
  end
end