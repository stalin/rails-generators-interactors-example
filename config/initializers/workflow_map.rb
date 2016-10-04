workflow_map =  ActiveSupport::HashWithIndifferentAccess.new
YAML.load_file("#{Rails.root}/config/workflow_map.yml").each do |key, list_of_classes|
  workflow_map[key] = list_of_classes.to_s.split(", ")
end
WorkflowMap = workflow_map.to_proc
