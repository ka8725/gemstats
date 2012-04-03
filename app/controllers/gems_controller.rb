class GemsController < ApplicationController
  def show
    @gem_info = GemStats::Gem.find_by_name(params[:id])
  end

  def search
    @gems = GemStats::Gem.where(:name => /#{params[:q]}/).order('downloads DESC').fields(:name, :downloads, :version, :info)
  end
end
