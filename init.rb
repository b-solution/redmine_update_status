Redmine::Plugin.register :redmine_update_status do
  name 'Redmine Update Status plugin'
  author 'ISPEHE'
  description 'This is a plugin update status and %done when you log time'
  version '0.0.1'
  url 'http://ispehe.org/'
  author_url 'http://ispehe.org/'

end


Rails.application.config.to_prepare do
  require_dependency 'hooks'
end
