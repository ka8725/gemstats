raise Rails.env.production?.inspect
MongoMapper.connection = Rails.env.production? ? Mongo::Connection.from_uri(ENV['MONGOLAB_URI']) : Mongo::Connection.new('localhost', 27017)
MongoMapper.database = Rails.env.production? ? "heroku_app3547355" : "gem_stats"
