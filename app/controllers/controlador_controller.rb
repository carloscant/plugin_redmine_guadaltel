class ControladorController < ApplicationController
  unloadable


  def anadir_tareas

  	@tarea = Issue.find(params[:id])

  	@project = Project.find(Setting[:plugin_boton_crear_tareas]['project_id'])

  	#redirect_to issue_path(1)

  end

  def completar_anadir_tareas

  	@tarea = Issue.find(params[:id])

  	@project = Project.find(Setting[:plugin_boton_crear_tareas]['project_id'])

  	Issue.transaction do

	  	@project.issues.each do |tarea|

	  		nueva_tarea = tarea.dup

	  		nueva_tarea.project_id = @tarea.project_id

	  		nueva_tarea.parent_id = @tarea.id

	  		nueva_tarea.root_id = @tarea.root_id

	  		nueva_tarea.save

	  	end

  	end

  	redirect_to @tarea

  end

end
