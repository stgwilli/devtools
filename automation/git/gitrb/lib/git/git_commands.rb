module Git
    class GitCommands
        class << self
            def delete_all_other_branches
                run_git_command("branch",true).split("\n").select{|branch| /(\*.* | master)/ !~ branch}.each do|branch|
                    run_git_command("branch -D #{branch}")
                end
            end

            #add and commit everything on the current working branch
            def commit
                add_all
                run_git_command("commit")
            end

            #this will add everything on the current branch and then switch to either a new/existing branch
            #by name, so that the branch that was being worked on is in the state it was before any of the changes
            #happened
            def switch(branch_name)
               add_all 
               checkout(branch_name)
            end

            #switch to a branch - will create the branch if it does not already exist
            def checkout(branch_name)
                run_git_command("checkout #{("-b" if branch_does_not_exist?(branch_name))} #{branch_name}") 
            end

            #merge everything from the target branch into the current working branch
            def merge(target_branch)
                commit
                run_git_command("merge #{target_branch}")
            end

            #pull all of the changes from the specified remote onto a named local branch
            #if a local_branch is not specified it will create a new branch and do the pull
            #onto that branch
            def pull(remote,remote_branch,create_new_branch)
                commit
                create_new_branch ||= false
                remote_branch ||= 'master'
                local_branch = "pull_#{remote}_#{remote_branch}" 
                checkout(local_branch) if (create_new_branch)
                run_git_command("pull --rebase #{remote} #{remote_branch}")
            end

            #reset all of the changes on the current working branch
            def reset(*args)
                run_git_command("reset --hard",false)
                run_git_command("clean -d -f #{args.join(' ')}")
            end

            #performs a commit, merge, and push to a remote
            #if the branch_to_push_from is different that the current working
            #branch, it will switch to that branch and first do a merge of
            #the current working branch
            def push(remote,branch_to_push_from,switch_back_to_working)
                branch = active_branch
                branch_to_push_from ||= active_branch
                switch_back_to_working ||= true
                commit
                if (branch_to_push_from != branch)
                    checkout(branch_to_push_from)
                    merge(branch)
                end
                run_git_command("push #{remote} #{branch_to_push_from}") 
                checkout(branch) if switch_back_to_working
            end

            def active_branch
                /\*\s*(.*)\n/.match(run_git_command("branch",true))[1]
            end

            private
                def add_all()
                    run_git_command("add -A")
                end

                def run_git_command(command,capture_ouptut = false)
                    full_command = "git #{command}"
                    if (capture_ouptut)
                        `#{full_command}`
                    else
                        system(full_command)
                    end
                end


                def branch_does_not_exist?(branch_name)
                    ((/#{branch_name}/ =~ run_git_command("branch",true)) == nil)
                end
        end
    end

end
