class GemsController < ApplicationController
  def show
    @gem_info = GemInfo.find_by_name(params[:name])
  end

  def search
    @gems = GemInfo.where(["name like ?", "#{params[:q]}%"])
  end
end
