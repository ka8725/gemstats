module ApplicationHelper
  def clients(gem_name, env = 'runtime')
    env = env.to_s
    @clients ||= {}
    @clients[env] ||= GemStats::Gem.where("#{env}_dependencies" => @gem_info.name).map(&:name)
  end

  def gems_info(list, name)
    %Q{
      <td>
        <div class="label label-inverse">#{name}</div>
        <ul class='gem-list'>
          #{list.map { |gem_name| "<li>#{gem_name}</li>".html_safe }.join.html_safe}
        </ul>
        <dl class='dl-horizontal label'>
          <dt>Total:</dt>
            <dd>#{list.count}</dd>
        </dl>
      </td>
    }.html_safe
  end
end
