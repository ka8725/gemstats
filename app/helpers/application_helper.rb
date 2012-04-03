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

  def urls(gem_info)
    %w(project gem homepage wiki documentation mailing_list source_code bug_tracker).inject('') do |html, link|
      url = gem_info.send("#{link}_uri")
      html << %Q{<dt></dt><dd>#{link_to link.humanize, url}<dd>}.html_safe if url.present?
      html.html_safe
    end
  end
end
