#solo.rb

log_level :info
log_location STDOUT
node_name "localhost"
solo true
umask 0022
verbose_logging nil

role_path "#{ENV['METATOOL_PATH']}/lib/chef/roles"
data_bag_path "#{ENV['METATOOL_PATH']}/lib/chef/data_bags"
environment_path "#{ENV['METATOOL_PATH']}/lib/chef/environments"
file_backup_path "#{ENV['METATOOL_PATH']}/lib/chef/.backups"
file_cache_path "#{ENV['METATOOL_PATH']}/lib/chef/.cache"
checksum_path "#{ENV['METATOOL_PATH']}/lib/chef/.checksums"
cookbook_path [
  "#{ENV['METATOOL_PATH']}/lib/chef/cookbooks"
]
