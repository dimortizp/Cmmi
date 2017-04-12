class StepM
  include Mongoid::Document
  field :n_step, type: Integer
  field :t_format, type: String
  field :t_type, type: String
end
