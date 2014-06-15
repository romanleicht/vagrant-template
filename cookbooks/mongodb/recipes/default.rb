package "mongodb-org"

template "/etc/mongod.conf" do
  source "mongod.conf"
end

service "mongod" do
	action :enable
end

service "mongod" do
	action :restart
end

