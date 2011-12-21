ActiveAdmin.register Episode do
  index do
    column :number do |episode|
      link_to episode.number, admin_episode_path(episode)
    end
    column :title
    column :guest
    column :company
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Episode", :multipart => true do
      f.input :title
      f.input :guest
      f.input :company
      f.input :old_url, :as => :string
      f.input :intro
      f.input :show_notes
      f.input :posted_at
      f.input :video_url
      f.input :audio_url
      f.input :headshot
      f.input :bandwidth_sponsor
      f.input :vimeo_id, :as => :string
    end
    f.buttons
  end

end
