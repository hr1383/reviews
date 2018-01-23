require 'pry'
require 'rest-client'
require 'nokogiri'

page = Nokogiri::HTML(RestClient.get("https://www.facebook.com/pg/kreephoto/reviews/"))

page.css("div.userContentWrapper").each do |t|
	puts t.css("span.fcg u").text
	puts t.css("abbr").text
	puts t.css("div.userContent").text
	puts "-----------"
end
binding.pry