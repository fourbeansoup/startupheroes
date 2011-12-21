class AddOldUrlToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :old_url, :string
  end
end
