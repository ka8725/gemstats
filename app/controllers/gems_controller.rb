class GemsController < ApplicationController
  def show
    @gem_info = GemStats::Gem.find_by_name(params[:id])
    @title = "Full description for #{@gem_info.name} by metagem.info"
    @description = @gem_info.info
  end

  def search
    @gems = GemStats::Gem.where(:name => /#{params[:q]}/).order('downloads DESC').fields(:name, :downloads, :version, :info)
    @title = "Metagem.info - search result"
  end

  def index
    @original_gems = GemStats::Gem.for_clouds
    @popular_gems = @original_gems.sort {|a, b| a.name <=> b.name}
  end
end
