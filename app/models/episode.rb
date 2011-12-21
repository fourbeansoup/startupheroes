class Episode < ActiveRecord::Base
  extend FriendlyId

  belongs_to :bandwidth_sponsor
  scope :most_recent, lambda {|episode| {:conditions => ["number <> ?", episode.number], :order => "number DESC", :limit => 1}}
  before_save :render_markdown
  before_create :add_episode_number

  friendly_id :title, :use => :slugged
  has_attached_file :headshot,
    :storage => :s3,
    :bucket => ENV['S3_BUCKET'],
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }

  paginates_per 3

  def self.next_number
    Episode.order("number DESC").first.try(:number).to_i + 1
  end

  def description
    desc = intro.to_s + "\n" 
    desc += show_notes.to_s + "\n"
    desc += "<a href=\"#{video_url}\">Download Episode</a>" if video_url.present?
    desc
  end

  private

  def add_episode_number
    self.number = self.class.next_number
  end

  def render_markdown
    unless show_notes.blank?
      markdown = Redcarpet.new(show_notes)
      self.rendered_show_notes = markdown.to_html
    end
  end

end
