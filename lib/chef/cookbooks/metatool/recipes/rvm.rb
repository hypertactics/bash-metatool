# normally I would like to install gems via the role
# so maybe a wrapper recipe will come later because rvm
# wants an explicit user set and I do not so for now
# I will concede... I'll get you next time gadget!!

node.default['rvm']['user_installs'] = [
  {
    "user" => "#{ENV['USER']}",
    "default_ruby" => node["metatool"]["rvm"]["default_ruby"],
    "global_gems" => node["metatool"]["rvm"]["global_gems"]
  }
]
