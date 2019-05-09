class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipient_count, :mailing_date, :paper_format, :postage_type
  has_one :client
end
