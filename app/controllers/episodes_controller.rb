class EpisodesController < ApplicationController
  respond_to :html, :json, :rss

  def index
    respond_with(@episodes) do |format|
      format.html { @episodes = Episode.limit(3).order('number DESC').page params[:page] }
      format.rss { @episodes = Episode.order('number DESC').all}
    end
  end

  # GET /episodes/1
  # GET /episodes/1.json
  def show
    @episode = Episode.find(params[:id])
    @most_recent_episode = Episode.most_recent(@episode).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @episode }
    end
  end

  def rss
    redirect_to 'http://feeds.feedburner.com/startupheroes', :status => 302
  end

  def old_url
    episode = Episode.find_by_old_url(params[:old_url])
    redirect_to episode, :status => 301
  end
end
