class AddUrlsToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :video_url, :string
    add_column :episodes, :audio_url, :string
  end
end
