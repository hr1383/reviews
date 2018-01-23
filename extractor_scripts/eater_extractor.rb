require 'json'
require 'pry'
require 'rest-client'
require 'nokogiri'
require 'set'
# http://birdeye.com/review-sites/
# publishreview cross platform
page = Nokogiri::HTML(RestClient.get("https://sf.eater.com/maps/best-restaurants-san-francisco-38"))
binding.pry