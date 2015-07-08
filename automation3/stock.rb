require 'erb'
require 'yahoofinance'

# load the template
erb = ERB.new(File.read('stock.gnuplot.erb'),nil,'-')

# get quotes and evaluate the template
@quotes = YahooFinance::get_HistoricalQuotes_days( '^DJI', 365 )
script = erb.result(binding)

# write script out to gnuplot
open('|gnuplot', 'w+') do |gnuplot|
  gnuplot.write(script)
end
