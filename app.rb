require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @argument = params.fetch('argument_input')
  @string = params.fetch('string_input')
  @count = @string.word_count(@argument)
  erb(:word_count)
end
