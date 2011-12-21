class AddPostedAtToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :posted_at, :datetime
    add_index :episodes, :posted_at
  end
end
