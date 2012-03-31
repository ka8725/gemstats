desc 'Cron task for heroku'

task :cron do
  config = {:env => Rails.env, :uri => (Rails.env.development? ? 'mongodb://localhost:27017/gem_stats' : $MONGOLAB_URI) }
  `bundle exec fetchgemstats -e #{config[:env]} -u #{config[:uri]}`
end
