class Word < ActiveRecord::Base  

  def anagram
    Word.where(:sorted_word => self[:sorted_word])
  end
 
  def to_s
    self[:word]
  end
end