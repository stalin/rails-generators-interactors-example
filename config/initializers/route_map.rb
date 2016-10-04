route_map =  ActiveSupport::HashWithIndifferentAccess.new { |hash, key| hash[key] = key.to_s }
YAML.load_file("#{Rails.root}/config/route_map.yml").each do |key, namespace_name|
  route_map[key] = namespace_name.to_s
end
ROUTE_MAP = route_map
