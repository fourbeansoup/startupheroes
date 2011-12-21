ActiveAdmin.register BandwidthSponsor do

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Bandwidth Sponsor", :multiparty => true do
      f.input :url
      f.input :logo
    end
    f.buttons
  end
end
