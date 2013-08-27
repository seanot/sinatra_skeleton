
File.open('db/words', 'r').each_line do |line|
  Word.create(:dictionary_entry => line.chomp,
      :sorted_word => line.chomp.downcase.split(//).sort.join,
      :sorted_length => line.length)
end
