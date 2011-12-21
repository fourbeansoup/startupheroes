module ApplicationHelper

  def tweet_button(episode)
    content = ""
    options = {:class => "twitter-share-button",
              :"data-via" => "webpulptv",
              :"data-count" => "none",
              :"data-url" => episode_url(episode),
              :"data-related" => "joshowens:Follow the podcast host",
              :"data-text" => "#{episode.title} with #{episode.guest}"}
    content += content_tag :a, options do
      "Tweet"
    end
    content += javascript_include_tag "//platform.twitter.com/widgets.js"
  end

  def page_title
    title = backwards_title if @flipped
    title ||= partial_title
    title ||= @full_title
    title ||= forwards_title
    title
  end

  # Title Item - Controller - Site
  def backwards_title
    title_fields.reverse.join(" - ")
  end

  # Site - Controller - Title Item
  def forwards_title
    title_fields.join(" - ")
  end

  # Site - Partial Title
  def partial_title
    return nil unless @partial_title
    title = "#{@site.name} - "
    title += @partial_title
  end

  def action_name
    action = params[:action].to_s
  end

  def controller_name
    controller = params[:controller].to_s.humanize
    params[:action] == "show" ? controller.singularize : controller
  end

  def clean_controller_id(controller)
    controller.gsub(/\//, '_')
  end

  def body_class
    body_class = controller_name.downcase
    clean_controller_id(body_class) unless body_class.nil?
  end

  def production_env?
    RAILS_ENV == 'production'
  end

  def require_analytics?
    return true
  end

  private

  def title_fields
    fields = [@site.name]
    fields << (@controller_name || controller_name().capitalize)
    fields << @title_item.to_s unless @title_item.nil?
    fields
  end

end
