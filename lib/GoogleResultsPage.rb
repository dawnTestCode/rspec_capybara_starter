class GoogleResultsPage
  include Capybara::DSL

  def has_nav_bar?
    find_by_id('top_nav').visible?
  end

end
