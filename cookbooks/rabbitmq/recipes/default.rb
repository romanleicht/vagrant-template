package "rabbitmq-server"

execute "rabbitmq-plugins enable rabbitmq_management" do
	cwd "/usr/lib/rabbitmq/bin"
end

template "/etc/rabbitmq/rabbitmq.config" do
  source "rabbitmq.config"
end

service "rabbitmq-server" do
	action :enable
end

service "rabbitmq-server" do
	action :restart
end

