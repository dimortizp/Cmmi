class ProjectStepM
  include Mongoid::Document
  field :n_step, type: Integer
  field :n_project, type: Integer
  field :t_document, type: String
  field :t_type, type: String
end
