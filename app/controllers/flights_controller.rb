require 'open-uri'
require 'nokogiri'
require 'pry-byebug'

class FlightsController < ApplicationController
  def flight
  end

  def index
  end


  ingredient = 'chocolate'
  url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.m_titre_resultat a').each do |element|
    puts element.text.strip
    puts element.attribute('href').value
  end
  binding.pry
end




