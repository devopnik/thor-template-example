module Publish
  def self.included(base)
    base.class_eval do
      desc "publish", "publish docs"
      def publish
        puts "publishes a document"
      end

    end
  end
end
