class ProcessareasGrid

  include Datagrid

  scope do
    Processarea
  end

  filter(:n_level, :integer , :header => "Nivel")
  filter(:t_category, :string,  :header => "Categoria")

  column(:n_level,  :header => "Nivel")
  column(:t_name,  :header => "Nombre")
  column(:t_initials,  :header => "Iniciales")
  column(:t_category,  :header => "Categoria")
end
