desc 'Cron task for heroku'

task :cron do
  `bundle exec fetchgemstats -e production -u #{ENV['MONGOLAB_URI']}`
end
