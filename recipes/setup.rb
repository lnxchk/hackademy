#
# Cookbook Name:: hackademy
# Recipe:: setup
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# the pre-work necessary to set up the base VMs

%w{build-essential openssl libssl0.9.8 ruby1.9.3 libxml2-dev libxslt1-dev git-core unzip}.each do |e2pkg|
  package e2pkg do
    action :install
  end
end

%w{python-software-properties python g++ make}.each do |pkg|
  package pkg do
    action :install
  end
end

apt_repository "chris-lea-node_js-precise" do
  uri "http://ppa.launchpad.net/chris-lea/node.js/ubuntu" 
  distribution node['lsb']['codename'] 
  components ["main"]
end

package "couchdb" do
  action :install
end

package "nodejs" do
  action :install
end

remote_file "#{Chef::Config['file_cache_path']}/ec2-api-tools.zip" do
  source "https://ec2-downloads.s3.amazonaws.com/ec2-api-tools.zip" 
end

directory "/usr/local/ec2" do
end

bash 'extract_module' do
  cwd "/usr/local/ec2"
  code <<-EOH
    unzip "#{Chef::Config['file_cache_path']}/ec2-api-tools.zip"
  EOH
  not_if { ::File.exists?("/usr/local/ec2/ec2-api-tools-1.6.7.3/THIRDPARTYLICENSE.TXT") }
end

