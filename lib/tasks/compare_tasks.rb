module CompareTasks
  def self.included(base)
    base.class_eval do
      desc "this", "compare this"
      long_desc <<-LONGDESC
          Long form descriptions go here for this task:

          Example: bin/compare this

          Outputs: { output description here }
        LONGDESC
      def this
        puts "compares this to something"
      end

      desc "that", "compare that"
      def that
        puts "compares that to something"
      end

    end
  end
end
