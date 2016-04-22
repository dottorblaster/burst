Gem::Specification.new do |s|
  s.name        = 'burst'
  s.version     = '0.0.5'
  s.date        = '2015-12-28'
  s.summary     = "Easier front-matter YAML for Jekyll"
  s.description = "Give an energy burst to your Jekyll workflow"
  s.authors     = ["Alessio Biancalana"]
  s.email       = 'dottorblaster@gmail.com'
  s.files       = ["lib/burst.rb"]
  s.homepage    = 'https://github.com/dottorblaster/burst'
  s.license     = 'MIT'

  s.executables << 'burst'

  s.add_runtime_dependency 'json', '~>1.8.3'
  s.add_runtime_dependency 'trollop', '~>2.1'
end
