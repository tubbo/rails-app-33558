class FooGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def generate_foo_scaffold
    generate 'scaffold foos'
  end
end
