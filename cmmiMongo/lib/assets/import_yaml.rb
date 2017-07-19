# define class Import
class Import
  def initialize()  
    # Instance variables  
    @links = Array.new
  end 
  def import file_name
    process = YAML.load_file(file_name)
    #remove_previous_steps
    save_steps process
    link_steps process
  end

  def save_steps process
    byebug
    process.each { |name, step|
      
      if 'LINK' != step['type']
        step['id'] = save_step step['type'], step['desc'], step['practice']
        if step.include?'steps'
          save_step step['steps']
        end
      else
        @links.select{|name,practice_code| link.practice_code = step['practice']}
      end
      link['name'] = name
      link['practice_code'] = step['practice']
      @links.push(link)
    }
  end

  def link_steps process
    process.each { |name, step|

    }
  end

  def save_step type, desc, practice_code
    practice_id = find_practice_for_code practice_code
    return practice_id
  end

  def find_practice_for_code practice_code
    @steps = Step.find_by 

    return 
    ##
  end
end