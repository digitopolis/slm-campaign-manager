class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :recipient_count
      t.date :mailing_date
      t.string :paper_format
      t.string :postage_type
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
