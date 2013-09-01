#encoding: utf-8
require 'mechanize'

task :scrape_galleries_artforum => :environment do
  desc "Scrape through ArtForum for galleries with Reception"

  agent = Mechanize.new
  url = "http://artforum.com/guide/country=US&place=New%20York&district=Chelsea&page_id=0&show=all&view=print"
  page = agent.get(url)
  list_items = page.search(".Reception")
  list_items.map do |item|
    item.parent.parent.parent.text
  end


  if list_items.any? {|w| text[w]}

  end

end
