default['package']['names'] = %w(wget vim git gcc sqlite)

default['user']['name'] = 'ec2-user'
default['user']['home'] = "/home/#{default['user']['name']}"

default['golang']['version'] = '1.6'
default['golang']['arch'] = 'amd64'
default['golang']['root_dir'] = '/usr/local'
default['golang']['root'] = "#{default['golang']['root_dir']}/go"
default['golang']['command'] = "#{default['golang']['root']}/bin/go"
default['golang']['src']['name'] = "go#{default['golang']['version']}.linux-#{default['golang']['arch']}.tar.gz"
default['golang']['src']['url'] = "https://storage.googleapis.com/golang/#{default['golang']['src']['name']}"

default['vuls']['go-cve-dictionary']['url'] = 'https://github.com/kotakanbe/go-cve-dictionary'
default['vuls']['go-cve-dictionary']['branch'] = 'master'
default['vuls']['go-cve-dictionary']['imports'] = %w(
  github.com/google/subcommands
  github.com/kotakanbe/go-cve-dictionary/commands
  github.com/mattn/go-sqlite3
  golang.org/x/net/context
)
default['vuls']['go-cve-dictionary']['nvd']['start_year'] = '2011'
default['vuls']['go-cve-dictionary']['nvd']['end_year'] = '2016'

default['vuls']['scanner']['url'] = 'https://github.com/future-architect/vuls.git'
default['vuls']['scanner']['branch'] = 'master'
default['vuls']['scanner']['imports'] = %w(
  golang.org/x/net/context
  github.com/google/subcommands
  github.com/mattn/go-sqlite3
  github.com/future-architect/vuls/commands
)
default['vuls']['scanner']['server']['amazon'] = %w()
default['vuls']['scanner']['server']['centos'] = %w()
default['vuls']['scanner']['server']['ubuntu'] = %w()
default['vuls']['scanner']['server']['redhat'] = %w()
