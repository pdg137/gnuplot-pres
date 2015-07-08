require 'yahoofinance'

YahooFinance::get_HistoricalQuotes_days( '^DJI', 365 ) do |q|
  puts "#{q.date} #{q.close}"
end
