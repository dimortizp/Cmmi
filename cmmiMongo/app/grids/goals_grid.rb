class GoalsGrid

  include Datagrid

  scope do
    Goal
  end

  filter(:n_processarea, :string,  :header => "Área de proceso")
  filter(:t_name,:string , :header => "Meta")

  column(:n_processarea, :header => "Área de proceso")
  column(:t_name, :header => "Meta")
  column(:t_description,:header => "Descripción")
  column(:t_type,:header => "Código")
  column(:actions, html: true,:header => "Operación") do |goal|
  link_to 'Editar', edit_goal_path(goal)
  end 
  
end
