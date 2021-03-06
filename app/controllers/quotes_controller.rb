# app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :winking
  end
  
  def quote_1
    quote_1 = FileModel.find(1)
    if quote_1
      render :quote, :obj => quote_1
    else
      ""
    end
  end
  
  def show
    @obj = FileModel.find(params["id"])
    render_response :quote, {:user_agent => request.user_agent}
  end
  
  def index
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
  
  def create
    # puts request.inspect
    quote = FileModel.find(request.params["id"])
    quote["quote"]= request.params["quote"]
    quote.save
    
    render :quote, :obj => quote
  end
  
end