class CampaignsController < ApplicationController
	before_action :find_campaign, only: [:show]

	def show
	end

	def new
	  @campaign = Campaign.new
	end

	def create
	  @campaign = Campaign.create(campaign_params)
		if @campaign.valid?
			redirect_to campaign_path
		else
			render :new
		end
	end

	private

	def find_campaign
	  @campaign = Campaign.find(params[:id])
	end
end
