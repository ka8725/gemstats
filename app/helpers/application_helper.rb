module ApplicationHelper
  def gems_info(list, name)
    return if list.blank?
    %Q{
      <div>
        <div class="label label-inverse">#{name}: #{list.count}</div>
        <ul class='gem-list'>
          #{list.map { |gem| "<li title='#{gem[:name]}'>#{link_to gem[:name], gem_path(gem[:name])}</li>".html_safe }.join.html_safe}
        </ul>
      </div>
    }.html_safe
  end
end
