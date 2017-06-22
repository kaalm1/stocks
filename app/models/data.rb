class Data

  def self.stocks
    all_stocks = Stock.all.join("+")
    info_wanted = Stock.info_wanted
    url = "http://finance.yahoo.com/d/quotes.csv?s=#{all_stocks}&f=#{info_wanted}"
    # url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22YHOO%22,%22MSFT%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="
    CSV.parse(RestClient.get(url),headers=true)
    binding.pry
  end

end
