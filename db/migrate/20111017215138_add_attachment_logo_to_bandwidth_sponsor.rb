class AddAttachmentLogoToBandwidthSponsor < ActiveRecord::Migration
  def self.up
    add_column :bandwidth_sponsors, :logo_file_name, :string
    add_column :bandwidth_sponsors, :logo_content_type, :string
    add_column :bandwidth_sponsors, :logo_file_size, :integer
    add_column :bandwidth_sponsors, :logo_updated_at, :datetime
  end

  def self.down
    remove_column :bandwidth_sponsors, :logo_file_name
    remove_column :bandwidth_sponsors, :logo_content_type
    remove_column :bandwidth_sponsors, :logo_file_size
    remove_column :bandwidth_sponsors, :logo_updated_at
  end
end
