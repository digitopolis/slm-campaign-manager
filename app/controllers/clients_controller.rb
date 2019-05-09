class ClientsController < ApplicationController
	before_action :find_client, only: [:show]

	def index

	end

	def show
	  @campaigns = @client.campaigns
	end

	private

	def find_client
	  @client = Client.find(params[:id])
	end
end
