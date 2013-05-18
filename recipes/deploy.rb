# deploy.rb
#

# create the directory for your code to live in
# Set this value in hackademy/attributes/default.rb
#
directory node['hackademy']['deploydir'] do

end


# the gitrepo to sync your code from
# Set this value in hackademy/attributes/default.rb
git node['hackademy']['deploydir'] do
  repository node['hackademy']['gitrepo']
  reference "master"
  action :sync
  depth 1
end
