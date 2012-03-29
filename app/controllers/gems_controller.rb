class GemsController < ApplicationController
  def show
    @gem_info = GemStats::Gem.find_by_name(params[:name]) || GemStats::Gem.new
  end
end
