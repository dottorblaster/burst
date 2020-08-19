Gem::Specification.new do |s|
  s.name        = 'burst'
  s.version     = '1.2.0'
  s.date        = '2015-12-28'
  s.summary     = "Easier front-matter YAML for Jekyll"
  s.description = "Give an energy burst to your Jekyll workflow"
  s.authors     = ["Alessio Biancalana"]
  s.email       = 'dottorblaster@gmail.com'
  s.files       = Dir["lib/*.rb"]
  s.homepage    = 'https://github.com/dottorblaster/burst'
  s.license     = 'MIT'

  s.executables << 'burst'

  s.add_runtime_dependency 'json', '~>2.3.1'
  s.add_runtime_dependency 'trollop', '~>2.9.10'
  s.add_runtime_dependency 'colorize', '~>0.8.1'
end
