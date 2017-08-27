module OtherTaskTemplate
  def self.included(base)
    base.class_eval do
      no_tasks {
        def in_module_non_task
          puts "not a CLI task, but methods in no_tasks block can be called by other tasks"
          puts "this was called from within the module containing the task methods"
        end
      }
      description="These tasks are called with the other othertask"
      desc "othertask", description
      long_desc <<-LONGDESC
          #{description}\n
          In the longer form, you can explain in detail how the task should be run and what output to expect:

          Example: taskname -f first -s second -t third

          Outputs: { output description here }
        LONGDESC
      option :first, :required => true, :aliases => ["-f", "--first"]
      option :second, :aliases => ["-s", "--second"]
      option :third, :aliases => ["-t", "--third"]
      def othertask
        puts " -f #{options[:first]} is a required parameter, and won't run the task without being passed in as an argument"
        puts options[:second] || 'default second option value if -s was not passed a value'
        puts options[:third] || 'default third option value if -t was not passed a value'
        # task logic goes in this section
        puts ""
        in_module_non_task
      end

    end
  end
end
