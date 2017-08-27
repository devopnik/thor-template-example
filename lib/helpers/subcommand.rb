require 'thor'

class SubCommandBase < Thor
  def self.banner(command, namespace = nil, subcommand = false) # Sets a template for commands and task descriptions
    "#{basename} #{subcommand_prefix} #{command.usage}"
  end

  def self.subcommand_prefix #Allows shifting of argument placement for proper namespacing
    self.name.gsub(%r{.*::}, '').gsub(%r{^[A-Z]}) { |match| match[0].downcase }.gsub(%r{[A-Z]}) { |match| "-#{match[0].downcase}" }
  end
end
