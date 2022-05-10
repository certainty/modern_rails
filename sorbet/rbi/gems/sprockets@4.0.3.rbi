# typed: ignore

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sprockets` gem.
# Please instead update this file by running `bin/tapioca gem sprockets`.

module Sprockets
  extend ::Sprockets::Utils
  extend ::Sprockets::URIUtils
  extend ::Sprockets::PathUtils
  extend ::Sprockets::DigestUtils
  extend ::Sprockets::PathDigestUtils
  extend ::Sprockets::Dependencies
  extend ::Sprockets::Compressing
  extend ::Sprockets::Exporting
  extend ::Sprockets::ProcessorUtils
  extend ::Sprockets::Processing
  extend ::Sprockets::HTTPUtils
  extend ::Sprockets::Transformers
  extend ::Sprockets::Mime
  extend ::Sprockets::Paths
  extend ::Sprockets::Configuration
end

class Sprockets::AddSourceMapCommentToAssetProcessor
  class << self
    def call(input); end
  end
end

class Sprockets::ArgumentError < ::Sprockets::Error; end

class Sprockets::Asset
  def initialize(attributes = T.unsafe(nil)); end

  def ==(other); end
  def base64digest; end
  def bytesize; end
  def charset; end
  def content_type; end
  def digest; end
  def digest_path; end
  def each; end
  def environment_version; end
  def eql?(other); end
  def etag; end
  def filename; end
  def full_digest_path; end
  def hash; end
  def hexdigest; end
  def id; end
  def inspect; end
  def integrity; end
  def length; end
  def links; end
  def logical_path; end
  def metadata; end
  def source; end
  def to_hash; end
  def to_s; end
  def uri; end
  def write_to(filename); end
end

module Sprockets::Autoload; end

class Sprockets::BabelProcessor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::BabelProcessor::VERSION = T.let(T.unsafe(nil), String)

class Sprockets::Base
  include ::Sprockets::SourceMapUtils
  include ::Sprockets::Utils
  include ::Sprockets::PathUtils
  include ::Sprockets::DigestUtils
  include ::Sprockets::PathDigestUtils
  include ::Sprockets::URIUtils
  include ::Sprockets::PathDependencyUtils
  include ::Sprockets::Dependencies
  include ::Sprockets::Compressing
  include ::Sprockets::Exporting
  include ::Sprockets::ProcessorUtils
  include ::Sprockets::Resolve
  include ::Sprockets::Processing
  include ::Sprockets::HTTPUtils
  include ::Sprockets::Transformers
  include ::Sprockets::Mime
  include ::Sprockets::Paths
  include ::Sprockets::Configuration
  include ::Sprockets::Server
  include ::Sprockets::Loader
  include ::Sprockets::Bower
  include ::Sprockets::Npm

  def [](*args, **options); end
  def cache; end
  def cache=(cache); end
  def cached; end
  def compress_from_root(uri); end
  def expand_from_root(uri); end
  def file_digest(path); end
  def find_all_linked_assets(*args); end
  def find_asset(*args, **options); end
  def find_asset!(*args); end
  def index; end
  def inspect; end
end

module Sprockets::Bower
  def read_bower_main(dirname, filename); end
  def resolve_alternates(load_path, logical_path); end
end

Sprockets::Bower::POSSIBLE_BOWER_JSONS = T.let(T.unsafe(nil), Array)

class Sprockets::Bundle
  class << self
    def call(input); end
    def dedup(required); end
    def process_bundle_reducers(input, assets, reducers); end
  end
end

class Sprockets::Cache
  def initialize(cache = T.unsafe(nil), logger = T.unsafe(nil)); end

  def clear(options = T.unsafe(nil)); end
  def fetch(key); end
  def get(key, local = T.unsafe(nil)); end
  def inspect; end
  def set(key, value, local = T.unsafe(nil)); end

  private

  def expand_key(key); end
  def get_cache_wrapper(cache); end
  def peek_key(key); end

  class << self
    def default_logger; end
  end
end

class Sprockets::Cache::FileStore
  def initialize(root, max_size = T.unsafe(nil), logger = T.unsafe(nil)); end

  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def inspect; end
  def set(key, value); end

  private

  def compute_size(caches); end
  def find_caches; end
  def gc!; end
  def safe_open(path, &block); end
  def safe_stat(fn); end
  def size; end

  class << self
    def default_logger; end
  end
end

Sprockets::Cache::FileStore::DEFAULT_MAX_SIZE = T.let(T.unsafe(nil), Integer)
Sprockets::Cache::FileStore::EXCLUDED_DIRS = T.let(T.unsafe(nil), Array)
Sprockets::Cache::FileStore::GITKEEP_FILES = T.let(T.unsafe(nil), Array)

class Sprockets::Cache::GetWrapper < ::Sprockets::Cache::Wrapper
  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def set(key, value); end
end

class Sprockets::Cache::HashWrapper < ::Sprockets::Cache::Wrapper
  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def set(key, value); end
end

class Sprockets::Cache::MemoryStore
  def initialize(max_size = T.unsafe(nil)); end

  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def inspect; end
  def set(key, value); end
end

Sprockets::Cache::MemoryStore::DEFAULT_MAX_SIZE = T.let(T.unsafe(nil), Integer)

class Sprockets::Cache::NullStore
  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def inspect; end
  def set(key, value); end
end

Sprockets::Cache::PEEK_SIZE = T.let(T.unsafe(nil), Integer)

class Sprockets::Cache::ReadWriteWrapper < ::Sprockets::Cache::Wrapper
  def clear(options = T.unsafe(nil)); end
  def get(key); end
  def set(key, value); end
end

Sprockets::Cache::VERSION = T.let(T.unsafe(nil), String)
class Sprockets::Cache::Wrapper < ::Struct; end

class Sprockets::CachedEnvironment < ::Sprockets::Base
  def initialize(environment); end

  def cached; end
  def entries(path); end
  def index; end
  def load(uri); end
  def processor_cache_key(str); end
  def resolve_dependency(str); end
  def stat(path); end

  private

  def config=(config); end
end

class Sprockets::ClosureCompressor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::ClosureCompressor::VERSION = T.let(T.unsafe(nil), String)

module Sprockets::CoffeeScriptProcessor
  class << self
    def cache_key; end
    def call(input); end
  end
end

Sprockets::CoffeeScriptProcessor::VERSION = T.let(T.unsafe(nil), String)

module Sprockets::Compressing
  include ::Sprockets::Utils

  def compressors; end
  def css_compressor; end
  def css_compressor=(compressor); end
  def gzip=(gzip); end
  def gzip?; end
  def js_compressor; end
  def js_compressor=(compressor); end
  def register_compressor(mime_type, sym, klass); end
  def skip_gzip?; end
end

module Sprockets::Configuration
  include ::Sprockets::Utils
  include ::Sprockets::URIUtils
  include ::Sprockets::PathUtils
  include ::Sprockets::DigestUtils
  include ::Sprockets::PathDigestUtils
  include ::Sprockets::Dependencies
  include ::Sprockets::Compressing
  include ::Sprockets::Exporting
  include ::Sprockets::ProcessorUtils
  include ::Sprockets::Processing
  include ::Sprockets::HTTPUtils
  include ::Sprockets::Transformers
  include ::Sprockets::Mime
  include ::Sprockets::Paths

  def config; end
  def config=(config); end
  def context_class; end
  def digest_class; end
  def digest_class=(klass); end
  def initialize_configuration(parent); end
  def logger; end
  def logger=(_arg0); end
  def version; end
  def version=(version); end
end

class Sprockets::ContentTypeMismatch < ::Sprockets::Error; end

class Sprockets::Context
  def initialize(input); end

  def asset_data_uri(path); end
  def asset_path(path, options = T.unsafe(nil)); end
  def audio_path(path); end
  def content_type; end
  def depend_on(path); end
  def depend_on_asset(path); end
  def depend_on_env(key); end
  def env_proxy; end
  def environment; end
  def filename; end
  def font_path(path); end
  def image_path(path); end
  def javascript_path(path); end
  def link_asset(path); end
  def load(uri); end
  def load_path; end
  def logical_path; end
  def metadata; end
  def require_asset(path); end
  def resolve(path, **kargs); end
  def root_path; end
  def stub_asset(path); end
  def stylesheet_path(path); end
  def video_path(path); end

  protected

  def base64_asset_data_uri(asset); end
  def optimize_quoted_uri_escapes!(escaped); end
  def optimize_svg_for_uri_escaping!(svg); end
  def svg_asset_data_uri(asset); end
end

class Sprockets::Context::ENVProxy < ::SimpleDelegator
  def initialize(context); end

  def [](key); end
  def fetch(key, *_arg1); end
end

class Sprockets::ConversionError < ::Sprockets::NotFound; end

module Sprockets::Dependencies
  include ::Sprockets::URIUtils
  include ::Sprockets::PathUtils
  include ::Sprockets::DigestUtils
  include ::Sprockets::PathDigestUtils

  def add_dependency(uri); end
  def depend_on(uri); end
  def dependencies; end
  def dependency_resolvers; end
  def register_dependency_resolver(scheme, &block); end
  def resolve_dependency(str); end
end

module Sprockets::DigestUtils
  extend ::Sprockets::DigestUtils

  def already_digested?(name); end
  def detect_digest_class(bytes); end
  def digest(obj); end
  def digest_class; end
  def hexdigest(obj); end
  def hexdigest_integrity_uri(hexdigest); end
  def integrity_uri(digest); end
  def pack_base64digest(bin); end
  def pack_hexdigest(bin); end
  def pack_urlsafe_base64digest(bin); end
  def unpack_hexdigest(hex); end

  private

  def build_digest(obj); end
end

Sprockets::DigestUtils::ADD_VALUE_TO_DIGEST = T.let(T.unsafe(nil), Hash)
Sprockets::DigestUtils::DIGEST_SIZES = T.let(T.unsafe(nil), Hash)
Sprockets::DigestUtils::HASH_ALGORITHMS = T.let(T.unsafe(nil), Hash)

class Sprockets::DirectiveProcessor
  def initialize(comments: T.unsafe(nil)); end

  def _call(input); end
  def call(input); end

  protected

  def compile_header_pattern(comments); end
  def extract_directives(header); end
  def process_depend_on_asset_directive(path); end
  def process_depend_on_directive(path); end
  def process_directives(directives); end
  def process_link_directive(path); end
  def process_link_directory_directive(path = T.unsafe(nil), accept = T.unsafe(nil)); end
  def process_link_tree_directive(path = T.unsafe(nil), accept = T.unsafe(nil)); end
  def process_require_directive(path); end
  def process_require_directory_directive(path = T.unsafe(nil)); end
  def process_require_self_directive; end
  def process_require_tree_directive(path = T.unsafe(nil)); end
  def process_source(source); end
  def process_stub_directive(path); end

  private

  def expand_accept_shorthand(accept); end
  def expand_relative_dirname(directive, path); end
  def link_paths(paths, deps, accept); end
  def require_paths(paths, deps); end
  def resolve(path, **kargs); end
  def resolve_paths(paths, deps, **kargs); end
  def to_load(uri); end

  class << self
    def call(input); end
    def instance; end
  end
end

Sprockets::DirectiveProcessor::DIRECTIVE_PATTERN = T.let(T.unsafe(nil), Regexp)

class Sprockets::DoubleLinkError < ::Sprockets::Error
  def initialize(parent_filename:, logical_path:, last_filename:, filename:); end
end

class Sprockets::ERBProcessor
  def initialize(&block); end

  def call(input); end

  private

  def keyword_constructor?; end

  class << self
    def call(input); end
    def instance; end
  end
end

module Sprockets::EcoProcessor
  class << self
    def cache_key; end
    def call(input); end
  end
end

Sprockets::EcoProcessor::VERSION = T.let(T.unsafe(nil), String)

module Sprockets::EjsProcessor
  class << self
    def cache_key; end
    def call(input); end
  end
end

Sprockets::EjsProcessor::VERSION = T.let(T.unsafe(nil), String)

module Sprockets::EncodingUtils
  extend ::Sprockets::EncodingUtils

  def base64(str); end
  def charlock_detect(str); end
  def deflate(str); end
  def detect(str); end
  def detect_css(str); end
  def detect_html(str); end
  def detect_unicode(str); end
  def detect_unicode_bom(str); end
  def gzip(str); end
  def scan_css_charset(str); end
  def unmarshaled_deflated(str, window_bits = T.unsafe(nil)); end
end

Sprockets::EncodingUtils::BOM = T.let(T.unsafe(nil), Hash)
Sprockets::EncodingUtils::CHARSET_DETECT = T.let(T.unsafe(nil), Hash)
Sprockets::EncodingUtils::CHARSET_SIZE = T.let(T.unsafe(nil), Integer)
Sprockets::EncodingUtils::CHARSET_START = T.let(T.unsafe(nil), Array)

class Sprockets::Environment < ::Sprockets::Base
  def initialize(root = T.unsafe(nil)); end

  def cached; end
  def find_all_linked_assets(*args, &block); end
  def find_asset(*args, **options); end
  def find_asset!(*args); end
  def index; end
  def load(*args); end
end

class Sprockets::Error < ::StandardError; end
module Sprockets::Exporters; end

class Sprockets::Exporters::Base
  def initialize(asset: T.unsafe(nil), environment: T.unsafe(nil), directory: T.unsafe(nil)); end

  def asset; end
  def call; end
  def directory; end
  def environment; end
  def setup; end
  def skip?(logger); end
  def target; end
  def write(filename = T.unsafe(nil)); end
end

class Sprockets::Exporters::FileExporter < ::Sprockets::Exporters::Base
  def call; end
  def skip?(logger); end
end

class Sprockets::Exporters::ZlibExporter < ::Sprockets::Exporters::Base
  def call; end
  def setup; end
  def skip?(logger); end
end

class Sprockets::Exporters::ZopfliExporter < ::Sprockets::Exporters::ZlibExporter
  def setup; end
end

module Sprockets::Exporting
  def export_concurrent; end
  def export_concurrent=(export_concurrent); end
  def exporters; end
  def register_exporter(mime_types, klass = T.unsafe(nil)); end
  def unregister_exporter(mime_types, exporter = T.unsafe(nil)); end
end

class Sprockets::FileNotFound < ::Sprockets::NotFound; end
class Sprockets::FileOutsidePaths < ::Sprockets::NotFound; end

class Sprockets::FileReader
  class << self
    def call(input); end
  end
end

module Sprockets::HTTPUtils
  extend ::Sprockets::HTTPUtils

  def find_best_mime_type_match(q_value_header, available); end
  def find_best_q_match(q_values, available, &matcher); end
  def find_mime_type_matches(q_value_header, available); end
  def find_q_matches(q_values, available, &matcher); end
  def match_mime_type?(value, matcher); end
  def match_mime_type_keys(hash, mime_type); end
  def parse_q_values(values); end
end

class Sprockets::JSMincCompressor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::JSMincCompressor::VERSION = T.let(T.unsafe(nil), String)

class Sprockets::JstProcessor
  def initialize(namespace: T.unsafe(nil)); end

  def call(input); end

  class << self
    def call(input); end
    def default_namespace; end
    def instance; end
  end
end

module Sprockets::Loader
  include ::Sprockets::URIUtils
  include ::Sprockets::Utils
  include ::Sprockets::ProcessorUtils
  include ::Sprockets::PathUtils
  include ::Sprockets::DigestUtils
  include ::Sprockets::PathDependencyUtils
  include ::Sprockets::HTTPUtils
  include ::Sprockets::Transformers
  include ::Sprockets::Resolve
  include ::Sprockets::Processing
  include ::Sprockets::Mime

  def load(uri); end

  private

  def asset_from_cache(key); end
  def compress_key_from_hash(hash, key); end
  def expand_key_from_hash(hash, key); end
  def fetch_asset_from_dependency_cache(unloaded, limit = T.unsafe(nil)); end
  def load_from_unloaded(unloaded); end
  def resolve_dependencies(uris); end
  def store_asset(asset, unloaded); end
end

class Sprockets::Manifest
  include ::Sprockets::ManifestUtils

  def initialize(*args); end

  def assets; end
  def clean(count = T.unsafe(nil), age = T.unsafe(nil)); end
  def clobber; end
  def compile(*args); end
  def dir; end
  def directory; end
  def environment; end
  def filename; end
  def files; end
  def find(*args, &block); end
  def find_sources(*args); end
  def path; end
  def remove(filename); end
  def save; end

  private

  def executor; end
  def exporters_for_asset(asset); end
  def json_decode(obj); end
  def json_encode(obj); end
  def logger; end
end

module Sprockets::ManifestUtils
  extend ::Sprockets::ManifestUtils

  def find_directory_manifest(dirname, logger = T.unsafe(nil)); end
  def generate_manifest_path; end
end

Sprockets::ManifestUtils::MANIFEST_RE = T.let(T.unsafe(nil), Regexp)

module Sprockets::Mime
  include ::Sprockets::Utils
  include ::Sprockets::HTTPUtils

  def mime_exts; end
  def mime_type_charset_detecter(mime_type); end
  def mime_types; end
  def read_file(filename, content_type = T.unsafe(nil)); end
  def register_mime_type(mime_type, extensions: T.unsafe(nil), charset: T.unsafe(nil)); end
end

class Sprockets::NotFound < ::Sprockets::Error; end
class Sprockets::NotImplementedError < ::Sprockets::Error; end

module Sprockets::Npm
  def read_package_directives(dirname, filename); end
  def resolve_alternates(load_path, logical_path); end
end

module Sprockets::PathDependencyUtils
  include ::Sprockets::PathUtils
  include ::Sprockets::URIUtils

  def entries_with_dependencies(path); end
  def stat_directory_with_dependencies(dir); end
  def stat_sorted_tree_with_dependencies(dir); end
end

module Sprockets::PathDigestUtils
  include ::Sprockets::PathUtils
  include ::Sprockets::DigestUtils

  def file_digest(path); end
  def files_digest(paths); end
  def stat_digest(path, stat); end
end

module Sprockets::PathUtils
  extend ::Sprockets::PathUtils

  def absolute_path?(path); end
  def atomic_write(filename); end
  def directory?(path); end
  def entries(path); end
  def file?(path); end
  def find_matching_path_for_extensions(path, basename, extensions); end
  def find_upwards(basename, path, root = T.unsafe(nil)); end
  def join(base, path); end
  def match_path_extname(path, extensions); end
  def path_extnames(path); end
  def path_parents(path, root = T.unsafe(nil)); end
  def paths_split(paths, filename); end
  def relative_path?(path); end
  def relative_path_from(start, dest); end
  def set_pipeline(path, mime_exts, pipeline_exts, pipeline); end
  def split_subpath(path, subpath); end
  def stat(path); end
  def stat_directory(dir); end
  def stat_sorted_tree(dir, &block); end
  def stat_tree(dir, &block); end
end

Sprockets::PathUtils::SEPARATOR_PATTERN = T.let(T.unsafe(nil), String)

module Sprockets::Paths
  include ::Sprockets::Utils
  include ::Sprockets::PathUtils

  def append_path(path); end
  def clear_paths; end
  def each_file; end
  def paths; end
  def prepend_path(path); end
  def root; end

  private

  def root=(path); end
end

module Sprockets::Preprocessors; end

class Sprockets::Preprocessors::DefaultSourceMap
  def call(input); end

  private

  def default_mappings(lines); end
end

module Sprockets::Processing
  include ::Sprockets::Utils
  include ::Sprockets::URIUtils
  include ::Sprockets::ProcessorUtils

  def bundle_processors; end
  def pipelines; end
  def postprocessors; end
  def preprocessors; end
  def processors; end
  def register_bundle_metadata_reducer(mime_type, key, *args, &block); end
  def register_bundle_processor(*args, &block); end
  def register_pipeline(name, proc = T.unsafe(nil), &block); end
  def register_postprocessor(*args, &block); end
  def register_preprocessor(*args, &block); end
  def register_processor(*args, &block); end
  def unregister_bundle_processor(*args); end
  def unregister_postprocessor(*args); end
  def unregister_preprocessor(*args); end
  def unregister_processor(*args); end

  protected

  def build_processors_uri(type, file_type, pipeline); end
  def default_processors_for(type, file_type); end
  def processors_for(type, file_type, pipeline); end
  def resolve_processors_cache_key_uri(uri); end
  def self_processors_for(type, file_type); end

  private

  def register_config_processor(type, mime_type, processor = T.unsafe(nil), &block); end
  def unregister_config_processor(type, mime_type, processor); end
end

module Sprockets::ProcessorUtils
  extend ::Sprockets::ProcessorUtils

  def call_processor(processor, input); end
  def call_processors(processors, input); end
  def compose_processors(*processors); end
  def processor_cache_key(processor); end
  def processors_cache_keys(processors); end
  def validate_processor_result!(result); end
end

class Sprockets::ProcessorUtils::CompositeProcessor < ::Struct
  def cache_key; end
  def call(input); end

  class << self
    def create(processors); end
  end
end

Sprockets::ProcessorUtils::CompositeProcessor::PLURAL = T.let(T.unsafe(nil), Proc)
Sprockets::ProcessorUtils::CompositeProcessor::SINGULAR = T.let(T.unsafe(nil), Proc)
Sprockets::ProcessorUtils::VALID_METADATA_COMPOUND_TYPES = T.let(T.unsafe(nil), Set)
Sprockets::ProcessorUtils::VALID_METADATA_COMPOUND_TYPES_HASH = T.let(T.unsafe(nil), Hash)
Sprockets::ProcessorUtils::VALID_METADATA_TYPES = T.let(T.unsafe(nil), Set)
Sprockets::ProcessorUtils::VALID_METADATA_VALUE_TYPES = T.let(T.unsafe(nil), Set)
Sprockets::ProcessorUtils::VALID_METADATA_VALUE_TYPES_HASH = T.let(T.unsafe(nil), Hash)

module Sprockets::Resolve
  include ::Sprockets::PathUtils
  include ::Sprockets::URIUtils
  include ::Sprockets::PathDependencyUtils
  include ::Sprockets::HTTPUtils

  def resolve(path, load_paths: T.unsafe(nil), accept: T.unsafe(nil), pipeline: T.unsafe(nil), base_path: T.unsafe(nil)); end
  def resolve!(path, **kargs); end

  protected

  def parse_accept_options(mime_type, explicit_type); end
  def resolve_absolute_path(paths, filename, accept); end
  def resolve_alternates(load_path, logical_name); end
  def resolve_alts_under_path(load_path, logical_name, mime_exts); end
  def resolve_asset_uri(uri); end
  def resolve_index_under_path(load_path, logical_name, mime_exts); end
  def resolve_logical_path(paths, logical_path, accept); end
  def resolve_main_under_path(load_path, logical_name, mime_exts); end
  def resolve_relative_path(paths, path, dirname, accept); end
  def resolve_under_paths(paths, logical_name, accepts); end
end

class Sprockets::SassCompressor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::SassCompressor::VERSION = T.let(T.unsafe(nil), String)

class Sprockets::SasscCompressor
  def initialize(options = T.unsafe(nil)); end

  def call(input); end

  class << self
    def call(input); end
    def instance; end
  end
end

class Sprockets::SasscProcessor
  def initialize(options = T.unsafe(nil), &block); end

  def cache_key; end
  def call(input); end

  private

  def engine_options(input, context); end
  def merge_options(options); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
    def syntax; end
  end
end

module Sprockets::SasscProcessor::Functions
  def asset_data_url(path); end
  def asset_path(path, options = T.unsafe(nil)); end
  def asset_url(path, options = T.unsafe(nil)); end
  def audio_path(path); end
  def audio_url(path); end
  def font_path(path); end
  def font_url(path); end
  def image_path(path); end
  def image_url(path); end
  def javascript_path(path); end
  def javascript_url(path); end
  def stylesheet_path(path); end
  def stylesheet_url(path); end
  def video_path(path); end
  def video_url(path); end

  protected

  def sprockets_context; end
  def sprockets_dependencies; end
  def sprockets_environment; end
end

class Sprockets::ScsscProcessor < ::Sprockets::SasscProcessor
  class << self
    def syntax; end
  end
end

module Sprockets::Server
  def call(env); end

  private

  def bad_request_response(env); end
  def cache_headers(env, etag); end
  def css_exception_response(exception); end
  def escape_css_content(content); end
  def forbidden_request?(path); end
  def forbidden_response(env); end
  def head_request?(env); end
  def headers(env, asset, length); end
  def javascript_exception_response(exception); end
  def method_not_allowed_response; end
  def not_found_response(env); end
  def not_modified_response(env, etag); end
  def ok_response(asset, env); end
  def path_fingerprint(path); end
  def precondition_failed_response(env); end
end

Sprockets::Server::ALLOWED_REQUEST_METHODS = T.let(T.unsafe(nil), Set)

class Sprockets::SourceMapProcessor
  class << self
    def call(input); end
    def original_content_type(source_map_content_type, error_when_not_found: T.unsafe(nil)); end
  end
end

module Sprockets::SourceMapUtils
  extend ::Sprockets::SourceMapUtils

  def bsearch_mappings(mappings, offset, from = T.unsafe(nil), to = T.unsafe(nil)); end
  def combine_source_maps(first, second); end
  def compare_source_offsets(a, b); end
  def concat_source_maps(a, b); end
  def decode_source_map(map); end
  def decode_vlq_mappings(str, sources: T.unsafe(nil), names: T.unsafe(nil)); end
  def encode_source_map(map); end
  def encode_vlq_mappings(mappings, sources: T.unsafe(nil), names: T.unsafe(nil)); end
  def format_source_map(map, input); end
  def make_index_map(map); end
  def vlq_decode(str); end
  def vlq_decode_mappings(str); end
  def vlq_encode(ary); end
  def vlq_encode_mappings(ary); end
end

Sprockets::SourceMapUtils::BASE64_DIGITS = T.let(T.unsafe(nil), Array)
Sprockets::SourceMapUtils::BASE64_VALUES = T.let(T.unsafe(nil), Hash)
Sprockets::SourceMapUtils::VLQ_BASE = T.let(T.unsafe(nil), Integer)
Sprockets::SourceMapUtils::VLQ_BASE_MASK = T.let(T.unsafe(nil), Integer)
Sprockets::SourceMapUtils::VLQ_BASE_SHIFT = T.let(T.unsafe(nil), Integer)
Sprockets::SourceMapUtils::VLQ_CONTINUATION_BIT = T.let(T.unsafe(nil), Integer)

module Sprockets::Transformers
  include ::Sprockets::Utils
  include ::Sprockets::ProcessorUtils
  include ::Sprockets::HTTPUtils

  def compose_transformers(transformers, types, preprocessors, postprocessors); end
  def expand_transform_accepts(parsed_accepts); end
  def register_transformer(from, to, proc); end
  def register_transformer_suffix(types, type_format, extname, processor); end
  def resolve_transform_type(type, accept); end
  def transformers; end

  private

  def compose_transformer_list(transformers, preprocessors, postprocessors); end
  def compute_transformers!(registered_transformers); end
end

class Sprockets::Transformers::Transformer < ::Struct
  def from; end
  def from=(_); end
  def proc; end
  def proc=(_); end
  def to; end
  def to=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class Sprockets::URITar
  def initialize(uri, env); end

  def absolute_path?; end
  def compress; end
  def compressed_path; end
  def expand; end
  def path; end
  def root; end
  def scheme; end
end

module Sprockets::URIUtils
  extend ::Sprockets::URIUtils

  def build_asset_uri(path, params = T.unsafe(nil)); end
  def build_file_digest_uri(path); end
  def encode_uri_query_params(params); end
  def join_file_uri(scheme, host, path, query); end
  def join_uri(scheme, userinfo, host, port, registry, path, opaque, query, fragment); end
  def parse_asset_uri(uri); end
  def parse_file_digest_uri(uri); end
  def parse_uri_query_params(query); end
  def split_file_uri(uri); end
  def split_uri(uri); end
  def valid_asset_uri?(str); end
end

class Sprockets::UglifierCompressor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::UglifierCompressor::VERSION = T.let(T.unsafe(nil), String)

class Sprockets::UnloadedAsset
  def initialize(uri, env); end

  def asset_key; end
  def compressed_path; end
  def dependency_history_key; end
  def digest_key(digest); end
  def file_digest_key(stat); end
  def filename; end
  def params; end
  def uri; end

  private

  def load_file_params; end
end

module Sprockets::Utils
  extend ::Sprockets::Utils

  def concat_javascript_sources(buf, source); end
  def dfs(initial); end
  def dfs_paths(path); end
  def duplicable?(obj); end
  def hash_reassoc(hash, key_a, key_b = T.unsafe(nil), &block); end
  def hash_reassoc1(hash, key); end
  def module_include(base, mod); end
  def string_end_with_semicolon?(str); end
end

class Sprockets::Utils::Gzip
  def initialize(asset, archiver: T.unsafe(nil)); end

  def archiver; end
  def can_compress?; end
  def cannot_compress?; end
  def charset; end
  def compress(file, target); end
  def content_type; end
  def source; end
end

Sprockets::Utils::Gzip::COMPRESSABLE_MIME_TYPES = T.let(T.unsafe(nil), Hash)

module Sprockets::Utils::Gzip::ZlibArchiver
  class << self
    def call(file, source, mtime); end
  end
end

module Sprockets::Utils::Gzip::ZopfliArchiver
  class << self
    def call(file, source, mtime); end
  end
end

Sprockets::Utils::WHITESPACE_ORDINALS = T.let(T.unsafe(nil), Hash)
Sprockets::VERSION = T.let(T.unsafe(nil), String)

class Sprockets::YUICompressor
  def initialize(options = T.unsafe(nil)); end

  def cache_key; end
  def call(input); end

  class << self
    def cache_key; end
    def call(input); end
    def instance; end
  end
end

Sprockets::YUICompressor::VERSION = T.let(T.unsafe(nil), String)