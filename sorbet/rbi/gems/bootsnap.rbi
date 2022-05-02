# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/bootsnap/all/bootsnap.rbi
#
# bootsnap-1.11.1

module Bootsnap
  def bundler?; end
  def instrumentation_enabled=(arg0); end
  def self._instrument(event, path); end
  def self.absolute_path?(path); end
  def self.default_setup; end
  def self.instrumentation=(callback); end
  def self.instrumentation_enabled=(arg0); end
  def self.iseq_cache_supported?; end
  def self.log!; end
  def self.logger; end
  def self.logger=(logger); end
  def self.rb_get_path(arg0); end
  def self.setup(cache_dir:, development_mode: nil, load_path_cache: nil, autoload_paths_cache: nil, disable_trace: nil, compile_cache_iseq: nil, compile_cache_yaml: nil, compile_cache_json: nil); end
  extend Bootsnap
end
module Bootsnap::ExplicitRequire
  def self.from_archdir(feature); end
  def self.from_rubylibdir(feature); end
  def self.from_self(feature); end
  def self.with_gems(*gems); end
end
module Bootsnap::LoadPathCache
  def self.load_path_cache; end
  def self.loaded_features_index; end
  def self.setup(cache_path:, development_mode:); end
  def self.supported?; end
end
module Bootsnap::LoadPathCache::PathScanner
  def self.call(path); end
  def self.os_path(path); end
  def self.walk(absolute_dir_path, relative_dir_path, &block); end
end
class Bootsnap::LoadPathCache::Path
  def entries_and_dirs(store); end
  def expanded_path; end
  def initialize(path, real: nil); end
  def latest_mtime(path, dirs); end
  def non_directory?; end
  def path; end
  def relative?; end
  def scan!; end
  def stability; end
  def stable?; end
  def to_realpath; end
  def volatile?; end
end
class Bootsnap::LoadPathCache::Cache
  def dir_changed?; end
  def expand_path(feature); end
  def find(feature, try_extensions: nil); end
  def initialize(store, path_obj, development_mode: nil); end
  def load_dir(dir); end
  def maybe_append_extension(feature); end
  def now; end
  def push_paths(sender, *paths); end
  def push_paths_locked(*paths); end
  def reinitialize(path_obj = nil); end
  def search_index(feature, try_extensions: nil); end
  def stale?; end
  def try_ext(feature); end
  def try_index(feature); end
  def unshift_paths(sender, *paths); end
  def unshift_paths_locked(*paths); end
end
class Bootsnap::LoadPathCache::Store
  def commit_transaction; end
  def default_data; end
  def dump_data; end
  def fetch(key); end
  def get(key); end
  def initialize(store_path); end
  def load_data; end
  def mark_for_mutation!; end
  def mkdir_p(path); end
  def set(key, value); end
  def transaction; end
end
class Bootsnap::LoadPathCache::Store::NestedTransactionError < StandardError
end
class Bootsnap::LoadPathCache::Store::SetOutsideTransactionNotAllowed < StandardError
end
module Bootsnap::LoadPathCache::ChangeObserver
  def self.register(observer, arr); end
end
module Bootsnap::LoadPathCache::ChangeObserver::ArrayMixin
  def <<(entry); end
  def []=(*args, &block); end
  def append(*entries); end
  def clear(*args, &block); end
  def collect!(*args, &block); end
  def compact!(*args, &block); end
  def concat(entries); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def fill(*args, &block); end
  def flatten!(*args, &block); end
  def insert(*args, &block); end
  def keep_if(*args, &block); end
  def map!(*args, &block); end
  def pop(*args, &block); end
  def prepend(*entries); end
  def push(*entries); end
  def reject!(*args, &block); end
  def replace(*args, &block); end
  def reverse!(*args, &block); end
  def rotate!(*args, &block); end
  def select!(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def slice!(*args, &block); end
  def sort!(*args, &block); end
  def sort_by!(*args, &block); end
  def uniq!(*args); end
  def unshift(*entries); end
end
class Bootsnap::LoadPathCache::LoadedFeaturesIndex
  def cursor(short); end
  def extension_elidable?(feature); end
  def identify(short, cursor); end
  def initialize; end
  def key?(feature); end
  def purge(feature); end
  def purge_multi(features); end
  def register(short, long); end
  def strip_extension_if_elidable(feature); end
end
module Bootsnap::CompileCache
  def self.permission_error(path); end
  def self.setup(cache_dir:, iseq:, yaml:, json:); end
  def self.supported?; end
end
class Bootsnap::CompileCache::Error < StandardError
end
class Bootsnap::CompileCache::PermissionError < Bootsnap::CompileCache::Error
end
class Bootsnap::InvalidConfiguration < StandardError
end
module Kernel
  def load_without_bootsnap(*arg0); end
  def require_without_bootsnap(arg0); end
end
class Module
  def autoload_without_bootsnap(arg0, arg1); end
end
module Bootsnap::CompileCache::Native
  def compile_option_crc32=(arg0); end
  def coverage_running?; end
  def fetch(arg0, arg1, arg2, arg3); end
  def precompile(arg0, arg1, arg2); end
  def self.compile_option_crc32=(arg0); end
  def self.coverage_running?; end
  def self.fetch(arg0, arg1, arg2, arg3); end
  def self.precompile(arg0, arg1, arg2); end
end
module Bootsnap::CompileCache::ISeq
  def self.cache_dir; end
  def self.cache_dir=(cache_dir); end
  def self.compile_option_updated; end
  def self.fetch(path, cache_dir: nil); end
  def self.input_to_output(_data, _kwargs); end
  def self.input_to_storage(_, path); end
  def self.install!(cache_dir); end
  def self.precompile(path); end
  def self.storage_to_output(binary, _args); end
end
module Bootsnap::CompileCache::ISeq::InstructionSequenceMixin
  def compile_option=(hash); end
  def load_iseq(path); end
end
module Bootsnap::CompileCache::YAML
  def self.cache_dir; end
  def self.cache_dir=(cache_dir); end
  def self.implementation; end
  def self.init!; end
  def self.install!(cache_dir); end
  def self.msgpack_factory; end
  def self.msgpack_factory=(arg0); end
  def self.patch; end
  def self.precompile(path); end
  def self.strict_load(payload); end
  def self.strict_visitor; end
  def self.supported_internal_encoding?; end
  def self.supported_options; end
  def self.supported_options=(arg0); end
end
class Bootsnap::CompileCache::YAML::Uncompilable < StandardError
end
class Bootsnap::CompileCache::YAML::UnsupportedTags < Bootsnap::CompileCache::YAML::Uncompilable
end
module InvalidName___Class_0x00___EncodingAwareSymbols_12
  def unpack(payload); end
  extend InvalidName___Class_0x00___EncodingAwareSymbols_12
end
module Bootsnap::CompileCache::YAML::Psych4
  def input_to_storage(contents, _); end
  extend Bootsnap::CompileCache::YAML::Psych4
end
module Bootsnap::CompileCache::YAML::Psych4::UnsafeLoad
  def input_to_output(data, kwargs); end
  def input_to_storage(contents, _); end
  def storage_to_output(data, kwargs); end
  extend Bootsnap::CompileCache::YAML::Psych4::UnsafeLoad
end
module Bootsnap::CompileCache::YAML::Psych4::SafeLoad
  def input_to_output(data, kwargs); end
  def input_to_storage(contents, _); end
  def storage_to_output(data, kwargs); end
  extend Bootsnap::CompileCache::YAML::Psych4::SafeLoad
end
module Bootsnap::CompileCache::YAML::Psych4::Patch
  def load_file(path, *args, ****); end
  def unsafe_load_file(path, *args, ****); end
end
module Bootsnap::CompileCache::YAML::Psych3
  def input_to_output(data, kwargs); end
  def input_to_storage(contents, _); end
  def storage_to_output(data, kwargs); end
  extend Bootsnap::CompileCache::YAML::Psych3
end
module Bootsnap::CompileCache::YAML::Psych3::Patch
  def load_file(path, *args, ****); end
  def unsafe_load_file(path, *args, ****); end
end
module Bootsnap::CompileCache::JSON
  def self.cache_dir; end
  def self.cache_dir=(cache_dir); end
  def self.init!; end
  def self.input_to_output(data, kwargs); end
  def self.input_to_storage(payload, _); end
  def self.install!(cache_dir); end
  def self.msgpack_factory; end
  def self.msgpack_factory=(arg0); end
  def self.precompile(path); end
  def self.storage_to_output(data, kwargs); end
  def self.supported_options; end
  def self.supported_options=(arg0); end
end
module Bootsnap::CompileCache::JSON::Patch
  def load_file(path, *args, ****); end
end
