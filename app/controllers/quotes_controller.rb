# app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    "There is nothing either good or bad " +
     "only thinking makes it so." +
    "\n<pre>\n#{env}\n</pre>"
  end
  
  def exception
    raise "doh!"
  end
end