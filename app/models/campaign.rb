class Campaign < ApplicationRecord
  belongs_to :client

	def estimated_in_home_date
	  mailing_days = {
			'First Class' => 3,
			'Standard Mail' => 7
		}
		return self.mailing_date + mailing_days[self.postage_type]
	end

	def cost
	  postage_cost = {
			'First Class' => 0.45,
			'Standard Mail' => 0.70
		}
		paper_cost = {
			'4x6' => 1,
			'5x7' => 1.25,
			'6x9' => 2,
			'8x10' => 3
		}
		return postage_cost[self.postage_type] * paper_cost[self.paper_format] * self.recipient_count
	end
end
