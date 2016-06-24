class Document
  include Mongoid::Document
  field :n_format, type: Integer
  field :n_project, type: Integer
  field :n_version, type: Integer
end
