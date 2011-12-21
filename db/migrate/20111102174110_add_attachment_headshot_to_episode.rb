class AddAttachmentHeadshotToEpisode < ActiveRecord::Migration
  def self.up
    add_column :episodes, :headshot_file_name, :string
    add_column :episodes, :headshot_content_type, :string
    add_column :episodes, :headshot_file_size, :integer
    add_column :episodes, :headshot_updated_at, :datetime
  end

  def self.down
    remove_column :episodes, :headshot_file_name
    remove_column :episodes, :headshot_content_type
    remove_column :episodes, :headshot_file_size
    remove_column :episodes, :headshot_updated_at
  end
end
