get '/' do
  @anagram = params[:anagram]
  erb :index
end


post '/anagram' do
  response = params[:user_input]
  word=Word.new(:dictionary_entry => response, 
      :sorted_word => response.chomp.downcase.split(//).sort.join)
  p word
  if @anagram = word.anagram
    redirect "/#{@anagram}"
  else
    erb :index
  end
end

