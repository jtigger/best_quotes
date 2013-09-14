# app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :winking
  end
  
  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end
  
  def quotes
    quotes = FileModel.find_all
    render :quotes, :obj => quotes
  end
  
  def new_quote
    attrs = {
      "submitter" => "web_user",
      "quote" => "Feet don't fail me now!",
      "attribution" => "Anonymous"
    }
    model = FileModel.create attrs
    render :quote, :obj => model
  end
end