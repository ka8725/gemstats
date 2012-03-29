module ApplicationHelper
  def clients(gem_name, env = 'runtime')
    env = env.to_s
    @clients ||= {}
    @clients[env] ||= GemStats::Gem.where("#{env}_dependencies" => @gem_info.name).map(&:name)
  end
end
