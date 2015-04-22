module KnoxBox
  class Tasks
    include Rake::DSL if defined? Rake::DSL

    def install_tasks
      namespace:iron_hide do
        desc 'Load rules from local JSON file to remote CouchDB server'
        task :load_rules, :file, :db_server do |t, args|
          
        end
      end
    end
  end
 end

# KnoxBox::Tasks.new.install_tasks