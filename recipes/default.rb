package 'apache2'

service 'apache2' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end