# A Thor CLI template example application

## Purpose

This is a teaching repository for those interested in creating a command line interface (CLI) tool. It is an example of how a to use the Thor Gem to create a command line application, along with it's various configurations to include sub command formats. Inline documentation indicates the purpose for files and what they reference so beginners can understand the application structure.

## Usage

The files in `bin/` are executable. Simply run the commands to see the descriptions for usage:

```
bin/task
Commands:
  task help [COMMAND]                       # Describe available commands or one specific command
  task taskname -f, --first, --first=FIRST  # Description of the task

 
Options:
  --required-class-option=REQUIRED_CLASS_OPTION  # required for the class not the methods module

bin/other

Commands:
  other help [COMMAND]                         # Describe available commands or one specific command
  other task -f, --first, --first=FIRST  # These tasks are namespaced with the file basename

bin/sub
Commands:

  sub compare         # compare various things
  sub docs            # create and publish docs (a practical example of a CLI's purpose)
  sub help [COMMAND]  # Describe available commands or one specific command

bin/sub docs
Commands:

  sub docs create          # create docs
  sub docs help [COMMAND]  # Describe subcommands or one specific subcommand
  sub docs publish         # publish docs


bin/sub docs help create
Usage:
  sub docs create

create docs

bin/sub compare help this
Usage:
  sub compare this

Description:
  Long form descriptions go here for this task:


  Example: bin/compare this

  Outputs: { output description here }
```

_NB: This is a constant work in progress to create the most effective way to structure a CLI tool with the Thor gem. It can always be improved and will most likely succumb to unforeseen issues not considered upon initial implementation._
