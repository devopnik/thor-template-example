require "thor"

Dir[File.expand_path(File.dirname(__FILE__) + "/tasks/*.rb")].each do |file|
  require file
end

Dir[File.expand_path(File.dirname(__FILE__) + "/helpers/*.rb")].each do |file|
  require file
end


class TaskCLI < Thor
  class_option :required_class_option, :desc => 'required for the class not the methods module', :required => true

  no_tasks {
    def not_a_task
      puts "not a task, but methods in no_tasks block can be called by other tasks"
    end
  }
  include TaskTemplate
end

class OtherCLI < Thor
  no_tasks {
    def not_a_task
      puts "not a CLI task, but methods in no_tasks block can be called by other tasks"
    end
  }
  include OtherTaskTemplate
end

__END__

This is one example setup for a focus file in lib/ that can reference the classes in a namespaced manner via bin/
