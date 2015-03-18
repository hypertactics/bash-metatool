profile_aliases = Mash.new
profile_variables = Mash.new
profile_adhocs = Array.new

# most of this should be moved back into a definition - DRY

node["metatool"]["bash_profile"]["aliases"].each do |p_alias|
  profile_aliases[p_alias["alias"]] = Mash.new
  profile_aliases[p_alias["alias"]] = p_alias["command"]
end

node["metatool"]["bash_profile"]["variables"].each do |k,v|
  if v.is_a?(Array)
  
  else

  end

#  profile_variables[k] = Mash.new
#  node["metatool"]["bash_profile"]["variables"][k]["multivalues"].each do |wtf|
#    profile_variables[k].push(wtf)
#  end
end

node["metatool"]["bash_profile"]["adhocs"].each do |adhoc|
   profile_adhocs.push adhoc
end

#node["metatool"]["bash_profile"]["variables"].each do |k,v|
template "#{ENV['HOME']}/.bash_profile" do
  source "bash_profile.erb"
  variables(
    :aliases   => profile_aliases,
    :variables => profile_variables,
    :adhocs    => profile_adhocs
  )
end
