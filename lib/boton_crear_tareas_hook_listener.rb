class BotonCrearTareasHookListener < Redmine::Hook::ViewListener
  unloadable


  def view_issues_show_details_bottom(context = {})
  	
  	tarea = context[:issue]

  	if !( (/Analisis/ =~ tarea.subject).nil? )
  		return button_to 'Aceptar tarea', {:controller => 'controlador', :action => 'anadir_tareas', :id => context[:issue].id}, :method => :get
  	else
		  return ""
  	end 

  end


  #def view_projects_show_right(context = {})
  #  return content_tag("p", "Derecha")
  #end

  #render_on :view_projects_show_left, :partial => "controlador/cajita"

end