class GooglePage
  include Capybara::DSL

  def search_for(text)
    fill_in('q', with: text)
  end

end
