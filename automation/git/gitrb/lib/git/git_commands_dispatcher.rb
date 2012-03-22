require 'git_commands'

module Git
    class GitCommandsDispatcher
        def initialize
            @triggers = {}
            @triggers["checkout"] = lambda{|args| GitCommands.checkout(args[0])}
            @triggers["commit"] = lambda{|args| GitCommands.commit}
            @triggers["merge"] = lambda{|args| GitCommands.merge(args[0])}
            @triggers["pull"] = lambda{|args| GitCommands.pull(args[0],args[1],args[2])}
            @triggers["reset"] = lambda{|args| GitCommands.reset(args)}
            @triggers["push"] = lambda{|args| GitCommands.push(args[0],args[1],args[2])}
            @triggers["switch"] = lambda{|args| GitCommands.switch(args[0])}
            @triggers["delete_all_other_branches"] = lambda{|args| GitCommands.delete_all_other_branches}
        end

        def trigger(args)
            @triggers[args.shift].call(args)
        end
    end
end
