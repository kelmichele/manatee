class StaticPagesController < ApplicationController
	def home
	end

	def bondstrand_pipe
	end

	def contact
	end

	def photos
		@gallery = "https://s3.amazonaws.com/manatee-ship/gallery/manatee-gallery"
	end

	def services
	end

end
