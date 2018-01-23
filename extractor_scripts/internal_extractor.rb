require 'URI'
require 'json'
require 'pry'
require 'rest-client'
require 'open-uri'
require 'nokogiri'
require 'set'
# http://birdeye.com/review-sites/
# publishreview cross platform
File.open("urls.txt", "r") do |f|
  f.each_line do |line|
  	sleep(1)
    page = Nokogiri::HTML(RestClient.get(line.strip))
	website = ["yelp.com", "facebook.com"]
	info = {}
	mails = Set.new
	page.css("a").each do |link|
	website.each do |url|
		# puts "href=" + link['href']
		if link['href'] != nil and link['href'].include?(url)
			info[url] = [] if info[url] == nil
			info[url] << link['href'] unless info[url].include? url 
		elsif link['href'] != nil and link['href'].include?("mailto")
			text = link['href']
			text.slice!("mailto:")
			mails.add(text)	
		end
	end
	end
	info["url"] = line.strip
	info['emails'] = mails.to_a
	puts info.to_json
  end
end
#for food, tripadvisor, foursquare, opentable
# binding.pry