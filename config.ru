# best_quotes/config.ru
require './config/application'

map "/" do
  run QuotesController.rack_app_for(:index)
end

run BestQuotes::Application.new