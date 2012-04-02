config = {'development' => {'uri' => 'mongodb://localhost:27017/gem_stats'},
          'test'        => {'uri' => 'mongodb://localhost:27017/gem_stats_test'},
          'production'  => {'uri' => ENV['MONGOLAB_URI']}}
env = Rails.groups.include?('assets') ? 'development' : 'production'
GemStats::Connection.connect(:config => config, :env => env)
GemStats::Gem.ensure_index :name
