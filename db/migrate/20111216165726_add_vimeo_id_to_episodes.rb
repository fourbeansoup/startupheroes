class AddVimeoIdToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :vimeo_id, :string
  end
end
