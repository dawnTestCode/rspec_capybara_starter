require_relative '../lib/GooglePage.rb'
require_relative '../lib/GoogleResultsPage.rb'

describe "searching Google.com" do

  before(:each) do
    visit('/')
    @googlePage = GooglePage.new
  end

  #this test should pass
  it "should allow me to search for 'green cheese'", tag('Smoke') do
    #fill_in('q', with: 'green cheese')
    @googlePage.search_for("green cheese")
    #expect(page).to have_content('The first sort is green cheese, which is not green by reason of colour but for its newness, for the whey is not half pressed out of it yet.')
    googleResults = GoogleResultsPage.new
    expect(googleResults.has_nav_bar?).to be true
  end

  #this test should fail
  it "should show 'five stars' if I put five astericks into search box", tag('XFail') do
    #fill_in('q', with: '*****')
    @googlePage.search_for('*****')
    expect(page).to have_content('five stars')
  end

end
