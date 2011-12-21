class AddBandwidthSponsorIdToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :bandwidth_sponsor_id, :integer
  end
end
