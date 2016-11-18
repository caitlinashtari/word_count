require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path', {:type => :feature}) do
  it('processes two user inputs and returns number value') do
    visit('/')
    fill_in('string_input', :with => "pizza pizza pizza!")
    fill_in('argument_input', :with => "pizza")
    click_button('COUNT!')
    expect(page).to have_content('3')
  end
end
