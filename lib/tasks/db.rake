namespace 'db' do
  def adapter
    db_config["adapter"]
  end

  def app_name
    Rails.application.class.parent_name
  end

  def role_name
    db_config["username"]
  end

  def db_config
    Rails.configuration.database_configuration[Rails.env]
  end
end
