config = {'development' => {'uri' => 'mongodb://localhost:27017/gem_stats'},
          'production'  => {'uri' => ENV['MONGOLAB_URI']}}
GemStats::Connection.connect(:config => config, :env => Rails.env)
