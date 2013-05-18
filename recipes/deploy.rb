
directory "/usr/local/app" do

end
git "/usr/local/app" do
  repository "git://github.com/lnxchk/junque.git"
  reference "master"
  action :sync
end
