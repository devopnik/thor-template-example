require 'thor'

Dir[File.expand_path(File.dirname(__FILE__) + "/tasks/*.rb")].each do |file|
  require file
end

Dir[File.expand_path(File.dirname(__FILE__) + "/helpers/*.rb")].each do |file|
  require file
end

# module App
class Docs < SubCommandBase
  include Create
  include Publish
end

class Compare < SubCommandBase
  include CompareTasks
end

class CLI < Thor
  desc "docs", "create and publish docs (a practical example of a CLI's purpose)"
  subcommand "docs", Docs

  desc "compare", "compare various things"
  subcommand "compare", Compare
end

