model_map =  ActiveSupport::HashWithIndifferentAccess.new {|hash, key| hash[key] = "Core::#{key}".constantize}
YAML.load_file("#{Rails.root}/config/model_map.yml").each do |key, class_name|
  model_map[key] = class_name.to_s.constantize
end
ControlModel = model_map.to_proc
