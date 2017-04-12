class PracticesGrid

  include Datagrid

  scope do
    Practice
  end

  filter( :n_goal , :integer, :header => "Meta")

  column(:n_goal, :header => "Meta")
  column(:t_code, :header => "Codigo")
  column(:t_name, :header => "Nombre")
  column(:t_description, :header => "Descripción")
  column(:actions, html: true,:header => "Operación") do |practice|
  link_to 'Editar', edit_practice_path(practice)
  end
end
