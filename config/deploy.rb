set :application, 'dpk-engineering'
#
# GitHub settings #######################################################################################
#
default_run_options[:pty] = true
set :repository, "git@github.com:jwo/DPK-Engineering.git" #GitHub clone URL
set :scm, "git"
#set :scm_passphrase, "notused" #This is the passphrase for the ssh key on the server deployed to
set :branch, "master"
set :scm_verbose, true


role :app, "dpk.jessewolgamott.com"
role :web, "dpk.jessewolgamott.com"
role :db,  "dpk.jessewolgamott.com", :primary => true