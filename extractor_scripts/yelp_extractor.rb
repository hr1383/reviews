require 'pry'
require 'rest-client'
require 'nokogiri'

page = Nokogiri::HTML(RestClient.get("https://www.yelp.com/biz/thrive-milpitas-milpitas-2"))
# page.css("div.review-content")[0].css("span.rating-qualifier").text
# page.css("div.review-content")[0].css("div.i-stars").attr("title").value
# page.css("div.review-content")[0].css("p").text
page.css("div.review-content").each do |t|
	puts t.css("span.rating-qualifier").text.strip
	puts t.css("div.i-stars").attr("title").value.strips
	puts t.css("p").text
	puts "-----------"
end
# binding.pry
