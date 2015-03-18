# install packages via simple role
# TODO: break out support for platforms
#  not all packages can live on all platforms (homebrew and aira2)
#  break this out into a definition so that information can be
#  declared in the metatool role and sifted out here
#  not sure if this is the right path or just pulling each into their own
#  cookbooks while allowing users to maintain some sort of index for their 
#  personal use.. needs some thought (but cookbooks already do this nicely..)

node['metatool']['packages'].each do |pkg_name,pkg_config|
  package pkg_name do
    version  pkg_config['version'] if pkg_config['version']
    provider pkg_config['provider'] if pkg_config['provider']
    action   pkg_config['action']
  end
end
