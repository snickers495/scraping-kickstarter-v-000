# require libraries/modules here
require 'nokogiri'
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  array = kickstarter.css("li.project.grid_4")
  p
  array.each do |post|


end
