# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gem, :class => GemStats::Gem do
    sequence(:name)   {|n| "my_gem_name#{n}"}
    version           '0.0.1'
    version_downloads {rand(500)}
    downloads         {rand(1000)}
    info              "This is info"
    authors           "Green Budget"
    dependencies      "{'development' : [{'name' : 'my_gem_0', 'requirements' : '0.0.1' },
                                         {'name' : 'my_gem_1', 'requirements' : '0.0.1' }],
                        'runtime'     : [{'name' : 'my_gem_3', 'requirements' : '0.0.1' },
                                         {'name' : 'my_gem_4', 'requirements' : '0.0.1' }]}"
    project_uri             "http://project-uri.com"
    gem_uri                 "http://project-uri.com/gem.gem"
    homepage_uri            "http://homepage-uri.com"
    wiki_uri                "http://wiki-uri.com"
    documentation_uri       "http://documentation-uri.com"
    mailing_list_uri        "http://mailing-list-uri.com"
    bug_tracker_uri         "http://bug-tracker-uri.com"
    source_code_uri         "http://source-code-uri.com"
  end
end
