require 'test_helper'
require 'generators/foo/foo_generator'

class FooGeneratorTest < Rails::Generators::TestCase
  tests FooGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  test 'generator generates generated generators' do
    run_generator ['foo']

    assert_file 'app/controllers/foos_controller.rb'
  end
end
