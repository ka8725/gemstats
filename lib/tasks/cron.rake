desc 'Cron task for heroku'

task :cron => :environment do
  `bundle exec fetchgemstats -e production -u $MONGOLAB_URI`
end
