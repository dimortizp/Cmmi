class ProcessmapController < ApplicationController
  def match
  	@procces = Step.where(contains_process: 'false')
  end
end
