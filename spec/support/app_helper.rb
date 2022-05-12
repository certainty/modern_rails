# Adjust RSpec configuration for package folder structure
RSpec.configure do |config|
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/controllers")) { |metadata| metadata[:type] = :controller }
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/models")) { |metadata| metadata[:type] = :model }
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/requests")) { |metadata| metadata[:type] = :request }
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/routing")) { |metadata| metadata[:type] = :routing }
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/system")) { |metadata| metadata[:type] = :system }
  config.define_derived_metadata(file_path: Regexp.new("/packages/.*/spec/views")) { |metadata| metadata[:type] = :view }

  config.before(:each, :type => lambda { |v| v == :view }) do
    Dir.glob(Rails.root + ("packages/*/app/views")).each do |path|
      view.lookup_context.view_paths.push path
    end
  end
end
