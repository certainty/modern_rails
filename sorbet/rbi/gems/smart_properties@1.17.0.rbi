# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `smart_properties` gem.
# Please instead update this file by running `bin/tapioca gem smart_properties`.

module SmartProperties
  mixes_in_class_methods ::SmartProperties::ClassMethods

  def initialize(*args, &block); end

  def [](name); end
  def []=(name, value); end

  class << self
    private

    def included(base); end
  end
end

class SmartProperties::AssignmentError < ::SmartProperties::Error
  def initialize(sender, property, message); end

  def property; end
  def property=(_arg0); end
  def sender; end
  def sender=(_arg0); end
end

module SmartProperties::ClassMethods
  def properties; end

  protected

  def property(name, **options); end
  def property!(name, **options); end
end

class SmartProperties::ConfigurationError < ::SmartProperties::Error; end

class SmartProperties::ConstructorArgumentForwardingError < ::SmartProperties::Error
  def initialize(positional_arguments, keyword_arguments); end

  private

  def generate_description(argument_type, argument_number); end
end

class SmartProperties::Error < ::ArgumentError; end

class SmartProperties::InitializationError < ::SmartProperties::Error
  def initialize(sender, properties); end

  def properties; end
  def properties=(_arg0); end
  def sender; end
  def sender=(_arg0); end
  def to_hash; end
end

class SmartProperties::InvalidValueError < ::SmartProperties::AssignmentError
  def initialize(sender, property, value); end

  def to_hash; end
  def value; end
  def value=(_arg0); end

  private

  def accepter_message(sender, property); end
end

class SmartProperties::MissingValueError < ::SmartProperties::AssignmentError
  def initialize(sender, property); end

  def to_hash; end
end

module SmartProperties::ModuleMethods
  def included(target); end
end

class SmartProperties::Property
  def initialize(name, **attrs); end

  def accepter; end
  def accepts?(value, scope); end
  def convert(scope, value); end
  def converter; end
  def default(scope); end
  def define(klass); end
  def get(scope); end
  def instance_variable_name; end
  def missing?(scope); end
  def name; end
  def optional?(scope); end
  def prepare(scope, value); end
  def present?(scope); end
  def reader; end
  def required?(scope); end
  def set(scope, value); end
  def set_default(scope); end
  def to_h; end
  def writable; end
  def writable?; end

  private

  def null_object?(object); end

  class << self
    def define(scope, name, **options); end
  end
end

SmartProperties::Property::ALLOWED_DEFAULT_CLASSES = T.let(T.unsafe(nil), Array)
SmartProperties::Property::MODULE_REFERENCE = T.let(T.unsafe(nil), Symbol)

class SmartProperties::PropertyCollection
  include ::Enumerable

  def initialize; end

  def [](name); end
  def []=(name, value); end
  def each(&block); end
  def key?(name); end
  def keys; end
  def parent; end
  def register(child); end
  def to_hash; end
  def values; end

  protected

  def children; end
  def children=(_arg0); end
  def collection; end
  def collection=(_arg0); end
  def collection_with_parent_collection; end
  def collection_with_parent_collection=(_arg0); end
  def notify_children; end
  def refresh(parent_collection); end

  class << self
    def for(scope); end
  end
end

SmartProperties::VERSION = T.let(T.unsafe(nil), String)
module SmartProperties::Validations; end

class SmartProperties::Validations::Ancestor
  include ::SmartProperties
  extend ::SmartProperties::ClassMethods

  def to_proc; end
  def to_s; end
  def validate(klass); end

  class << self
    def must_be(*_arg0); end
  end
end
