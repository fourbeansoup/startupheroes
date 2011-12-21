xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Webpulp.tv"
    xml.description "A podcast that explores the guts of the web"
    xml.link episodes_url

    for episode in @episodes
      xml.item do
        xml.title episode.title
        xml.description strip_tags(episode.description)
        xml.pubDate episode.posted_at.to_s(:rfc822)
        xml.link episode_url(episode)
        xml.guid episode_url(episode)
        xml.enclosure :url => episode.video_url, :type => "video/quicktime"
      end
    end
  end
end
