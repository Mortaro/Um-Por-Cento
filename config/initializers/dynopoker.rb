if Rails.env.production?
  Dynopoker.configure do |config|
    config.address = 'http://www.diegopolly.com'
  end
end
