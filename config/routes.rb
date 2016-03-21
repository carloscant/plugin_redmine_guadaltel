# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get "controlador/anadir_tareas/:id", :to => "controlador#anadir_tareas"

post "controlador/completar_anadir_tareas/:id", :to => "controlador#completar_anadir_tareas"
