#
# Cookbook Name:: heka
# Attribute:: default
#

default['heka']['download']['mirror'] = 'http://ownlocal-debs.s3-website-us-east-1.amazonaws.com/heka'
default['heka']['download']['version'] = '0.9.2-70'
default['heka']['download']['arch'] = 'amd64'
default['heka']['download']['extension'] = 'deb'
default['heka']['download']['remote_src'] = "#{node['heka']['download']['mirror']}/heka_#{node['heka']['download']['version']}_#{node['heka']['download']['arch']}.#{node['heka']['download']['extension']}"
default['heka']['download']['remote_file'] = ::File.join("/tmp", "heka_#{node['heka']['download']['version']}_#{node['heka']['download']['arch']}.#{node['heka']['download']['extension']}")
default['heka']['bin'] = '/usr/bin/hekad'
default['heka']['init'] = '/etc/init/heka.conf'
default['heka']['dir'] = '/etc/heka'
default['heka']['conf_dir'] = '/etc/heka/'
default['heka']['log'] = '/var/log/hekad.log'
