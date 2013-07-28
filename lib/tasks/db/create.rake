namespace('db') do
  task('before_create') do
    if adapter == "postgresql"
      system("psql -c \"create role #{app_name} with createdb login;\" template1")
    end
    true
  end
end
Rake::Task['db:create'].enhance ['db:before_create']

