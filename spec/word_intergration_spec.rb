require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the index page path", {:type => :feature}) do
  it("initial") do
    visit("/")
    expect(page).to have_content("definitions")
  end
end

describe("the index page path to click add word", {:type => :feature}) do
  it("navigates to add word page") do
    visit("/")
    click_on('add new word')
    expect(page).to have_content("add a new word")
  end
end

describe("the index page path to click add word", {:type => :feature}) do
  it("navigates to add word page") do
    visit("/")
    click_on('add new word')
    fill_in('word', :with => "test")
    click_button('add a new word')
    expect(page).to have_content("test")
  end
end
