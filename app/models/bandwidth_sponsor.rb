class BandwidthSponsor < ActiveRecord::Base
  has_many :episodes

  has_attached_file :logo

  def name
    self.url
  end
end
