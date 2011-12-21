class CreateBandwidthSponsors < ActiveRecord::Migration
  def change
    create_table :bandwidth_sponsors do |t|
      t.string :url

      t.timestamps
    end
  end
end
