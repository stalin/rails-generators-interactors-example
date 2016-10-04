require 'rails/generators/migration'

class ClientGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def copy_client_migration
    migration_template "#{name}_migration.rb", "db/migrate/add_#{name}_custom_columns_to_post.rb", migration_version: migration_version
  end

  def update_client_route_map
    gsub_file 'config/route_map.yml', /^post:.*$/, 'post: hdfc'
  end

  def update_client_model_map
    gsub_file 'config/model_map.yml', /^Post:.*$/, 'Post: Hdfc::Post'
  end

  def update_client_workflow_map
    gsub_file 'config/workflow_map.yml', /^notify_user:.*$/, 'notify_user: SendEmail'
  end

  def self.next_migration_number(dir)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end



  def rails5?
    Rails.version.start_with? '5'
  end

  def migration_version
    if rails5?
      "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
    end
  end
end
