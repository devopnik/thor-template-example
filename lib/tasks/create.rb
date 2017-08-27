module Create
  def self.included(base)
    base.class_eval do
      desc "create", "create docs"
      def create
        puts "creates a document"
      end

    end
  end
end
