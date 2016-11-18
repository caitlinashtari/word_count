require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/exact_word_count') do
  @argument = params.fetch('argument_input')
  @string = params.fetch('string_input')
  @count = @string.single_word(@argument)
  erb(:word_count)
end

get('/all_word_count') do
  @argument = params.fetch('argument_input')
  @string = params.fetch('string_input')
  @count = @string.word_count(@argument)
  erb(:word_count)
end
