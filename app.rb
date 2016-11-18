require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @argument_input = params.fetch('argument_input')
  @count = params.fetch('string_input').word_count(@argument_input)

  erb(:word_count)
end
