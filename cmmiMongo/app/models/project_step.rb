class ProjectStep
  include Mongoid::Document
  field :n_realtime, type: String
  field :n_estimatedTime, type: String
  field :n_completionPercentage, type: Float
  field :t_state, type: String
end
