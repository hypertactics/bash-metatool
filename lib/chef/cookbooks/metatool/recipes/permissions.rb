user_home = ENV['HOME']
username  = ENV['USER']
ssh_files = ::Dir.entries("#{user_home}/.ssh")

# enforce good permissions on .ssh directory
directory "#{user_home}/.ssh" do
  owner username
  mode 0700
  recursive true
end

# enforce good file permission on all ssh files
ssh_files.each do |ssh_file|
  filename = "#{user_home}/.ssh/#{ssh_file}"
  if not ::File.directory?(filename)
    file filename do
      owner username
      mode 0600
    end
  end    
end
