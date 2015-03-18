git "#{ENV['METATOOL_PATH']}/tools/vcsh" do
  repository "https://github.com/RichiH/vcsh.git"
  action :checkout
end

link "tools-vcsh" do
  target_file "#{ENV['METATOOL_PATH']}/bin/vcsh"
  to "#{ENV['METATOOL_PATH']}/tools/vcsh/vcsh"
  link_type :symbolic
  action :create
end
