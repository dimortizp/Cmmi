class ProcessmapController < ApplicationController
  def match
  	@procces = Step.where(contains_process: 'false')
  	@specificpractice = Processarea.where(for_develop: 'true')
  end

  def filter
  	@specificpractice = Processarea.where(for_develop: 'true')
  end

end
