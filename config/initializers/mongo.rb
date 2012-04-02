config = {'development' => {'uri' => 'mongodb://localhost:27017/gem_stats'},
          'test'        => {'uri' => 'mongodb://localhost:27017/gem_stats_test'},
          'production'  => {'uri' => ENV['MONGOLAB_URI']}}
GemStats::Connection.connect(:config => config, :env => Rails.env)
