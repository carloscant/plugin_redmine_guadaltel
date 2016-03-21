Redmine::Plugin.register :boton_crear_tareas do
  name 'Boton Crear Tareas plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  require_dependency 'boton_crear_tareas_hook_listener'

  settings :default => {'empty' => true}, :partial => 'controlador/boton_crear_tareas_settings'  

end
