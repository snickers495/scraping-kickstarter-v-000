# require libraries/modules here
require 'nokogiri'
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  array = kickstarter.css("li.project.grid_4")
  projects = {}
  array.each do |post|
    title = post.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
    


end
