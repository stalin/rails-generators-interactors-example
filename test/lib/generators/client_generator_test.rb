require 'test_helper'
require 'generators/client/client_generator'

class ClientGeneratorTest < Rails::Generators::TestCase
  tests ClientGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
