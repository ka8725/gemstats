module ApplicationHelper
  def clients(gem_name, env = 'runtime')
    env = env.to_s
    @clients ||= {}
    @clients[env] ||= GemStats::Gem.where("#{env}_dependencies" => @gem_info.name).map(&:name)
  end

  def gems_info(list, name)
    return if list.blank?
    %Q{
      <div>
        <div class="label label-inverse">#{name}: #{list.count}</div>
        <ul class='gem-list'>
          #{list.map { |gem| "<li title='#{gem[:name]}'>#{link_to gem[:name], gem_path(gem)}</li>".html_safe }.join.html_safe}
        </ul>
      </div>
    }.html_safe
  end
end
