class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def new
	end

	
	def create

		 @url = Url.new(url_params)

		 @url.save
		 redirect_to @url
	end

	def show
		@url = Url.find(params[:id])
	end

	private
		def url_params
			params.require(:url).permit(:original_address, :shortened_url)
		end

end
