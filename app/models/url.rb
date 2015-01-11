class Url < ActiveRecord::Base

	def shorten_url 
		Faker::Lorem.characters(4)
	end

end
