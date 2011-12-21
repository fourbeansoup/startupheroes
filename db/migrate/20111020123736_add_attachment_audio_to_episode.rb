class AddAttachmentAudioToEpisode < ActiveRecord::Migration
  def self.up
    add_column :episodes, :audio_file_name, :string
    add_column :episodes, :audio_content_type, :string
    add_column :episodes, :audio_file_size, :integer
    add_column :episodes, :audio_updated_at, :datetime
  end

  def self.down
    remove_column :episodes, :audio_file_name
    remove_column :episodes, :audio_content_type
    remove_column :episodes, :audio_file_size
    remove_column :episodes, :audio_updated_at
  end
end
