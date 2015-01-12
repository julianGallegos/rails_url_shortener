class Url < ActiveRecord::Base
	
	before_save :add_short_url
	
	def add_short_url 
		self.shortened_url = "http://jag.ly/#{Array.new(5){rand(36).to_s(36)}.join}"
	end

end
