class StaticPagesController < ApplicationController

	def home
		@clients = Client.all
	end

end
