class Format
  include Mongoid::Document
  field :t_name, type: String
  field :t_content, type: String
end
