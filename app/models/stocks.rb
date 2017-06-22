class Stock

  def self.mlps
    ["PBFX","MPLX","DKL"].sort
  end

  def self.refineries
    ["PBF","PSX","MPC","DK"].sort
  end

  def self.all
    all_stocks = self.mlps + self.refineries
    all_stocks.sort
  end

  def self.headers
    ["Name","Symbol","Ask","Bid","Close","PE","Div","52 H","52 L"]
  end

  def self.info_wanted
    #n:name, s:symbol, a:ask, b:bid, p: Previous Close, r:PE ratio y: dividend, k:52-week high, j:52-week low
    "nsabprykj"
  end
end
