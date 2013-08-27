get '/' do
  @anagram = params[:anagram]
  erb :index
end

post '/anagram' do
  response = params[:user_input]
  word = Word.new(:dictionary_entry => response, 
      :sorted_word => response.chomp.downcase.split(//).sort.join)
  @anagram = word.anagram
  erb :index
end

