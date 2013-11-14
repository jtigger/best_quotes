# best_quotes/config.ru
require './config/application'

app = BestQuotes::Application.new

use Rack::ContentType

app.route do
  root proc { [200, {}, ["Root"] ] }
  match "sub-app", proc { [200, {}, ["Hello, sub-app!"]] }
  
  match ":controller/:id/:action"
  match ":controller/:id", :default => { "action" => "show" }
  match ":controller", :default => { "action" => "index" }
end

run app