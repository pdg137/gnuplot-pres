require 'yahoofinance'

YahooFinance::get_HistoricalQuotes_days( 'VOO', 30 ) do |q|
  puts "#{q.date} #{q.close}"
end
