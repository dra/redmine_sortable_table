#

Redmine::Plugin.register :sortable_table do
  name 'Sortable table plugin'
  author 'Alexander Golovko'
  description ''
  version '0.99'
  #url 'http://www.redminecrm.com'
  author_url 'mailto:alexandro@ankalagon.ru' if respond_to? :author_url
end


Redmine::WikiFormatting::Macros.register do
  desc "Macro for add javascript and css files for table sort work"
  macro :sortable_table do |obj, args|
    content_for :header_tags, javascript_include_tag( "tablesort.js", :plugin => 'sortable_table').html_safe
    content_for :header_tags, javascript_include_tag( "customsort.js", :plugin => 'sortable_table').html_safe
    content_for :header_tags, stylesheet_link_tag( :default, :plugin => 'sortable_table').html_safe
    ""
  end
end
