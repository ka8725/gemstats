class GemStats::Gem
  MAX_CLOUDS = 40
  MAX_WEIGHTS = 6
  MAX_WEIGHT = MAX_CLOUDS / (MAX_CLOUDS / MAX_WEIGHTS)

  def self.for_clouds(number_clouds = MAX_CLOUDS)
    limit(number_clouds).order('downloads DESC').all
  end
end
