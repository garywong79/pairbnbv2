require_relative '../../config/environments/test'
require 'valid_url'

class Url < ActiveRecord::Base

validates :long_url, :presence =>true
	validates_format_of :long_url, :with => URI::regexp(%w(http https))

before_create :shorten

	def shorten
	# This is Sinatra! Remember to create a migration!
		url = [('a'..'z'), ('A'..'Z'),(1..9)].map { |i| i.to_a }.flatten
		string = (0...5).map { url[rand(url.length)] }.join
		self.short_url = "#{string}"
	end

	def click
		self.click_count+=1
	end

end
