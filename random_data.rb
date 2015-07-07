#!/bin/env ruby

100.times do |x|
  puts -10+rand*(1+0.1*x)+rand*(1+0.1*x)+rand*(1+0.1*x)+0.02*x
end
