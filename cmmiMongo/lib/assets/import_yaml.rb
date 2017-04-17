  def import file_name
    #process = YAML.load_file('process.yml')
    process = YAML.load_file(file_name)
    #remove_previous_steps
    save_steps process
    link_steps process
  end

  def save_steps
    process.each { |name, step|
      unless 'LINK' == step['type']
        step['id'] = save_step step['type'], step['desc'], step['practice']
      end
    }
  end

  def link_steps process
    process.each { |name, step|

    }
  end

  def save_step type, desc, practice_code
    practice_id = find_practice_for_code practice_code
    return id
  end

  def find_practice_for_code practice_code
    ##
  end
