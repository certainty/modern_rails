# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rufo` gem.
# Please instead update this file by running `bin/tapioca gem rufo`.

class CustomScanner < ::ERB::Compiler::TrimScanner
  def initialize(src); end

  def etags; end
  def stags; end
end

module Rufo
  class << self
    def format(code, **options); end
  end
end

class Rufo::Bug < ::StandardError; end

class Rufo::Command
  def initialize(want_check, exit_code, filename_for_dot_rufo, loglevel); end

  def exit_code(status_code); end
  def format(code, dir, erb: T.unsafe(nil)); end
  def format_args(args); end
  def format_file(filename); end
  def format_stdin; end
  def run(argv); end

  private

  def logger; end

  class << self
    def parse_options(argv); end
    def run(argv); end
  end
end

Rufo::Command::CODE_CHANGE = T.let(T.unsafe(nil), Integer)
Rufo::Command::CODE_ERROR = T.let(T.unsafe(nil), Integer)
Rufo::Command::CODE_OK = T.let(T.unsafe(nil), Integer)

class Rufo::DotFile
  def initialize; end

  def find_in(dir); end
  def get_config_in(dir); end
  def internal_find_in(dir); end
  def parse(file_contents); end
end

class Rufo::ErbFormatter
  def initialize(code, **options); end

  def format; end
  def result; end

  private

  def code_mode; end
  def current_column; end
  def current_column=(_arg0); end
  def current_lineno; end
  def current_lineno=(_arg0); end
  def determine_code_wrappers(code_str); end
  def disable_code_mode; end
  def enable_code_mode; end
  def format_code(str); end
  def process_code(code_str); end
  def process_erb; end
  def raise_syntax_error!(code_str); end
  def scanner; end
  def update_column(token); end
  def update_lineno(token); end

  class << self
    def format(code, **options); end
  end
end

class Rufo::FileFinder
  include ::Enumerable

  def initialize(files_or_dirs, includes: T.unsafe(nil), excludes: T.unsafe(nil)); end

  def each; end

  private

  def all_rb_files(file_or_dir); end
  def build_file_list; end
  def excludes; end
  def files_or_dirs; end
  def includes; end
end

Rufo::FileFinder::DEFAULT_PATTERNS = T.let(T.unsafe(nil), Array)
Rufo::FileFinder::EXCLUDE_PATTERNS = T.let(T.unsafe(nil), Array)
Rufo::FileFinder::EXTENSIONS = T.let(T.unsafe(nil), Array)
Rufo::FileFinder::FILENAMES = T.let(T.unsafe(nil), Array)
Rufo::FileFinder::RAKEFILES = T.let(T.unsafe(nil), Array)

class Rufo::FileList
  def initialize(*patterns); end

  def &(*args, &block); end
  def +(*args, &block); end
  def -(*args, &block); end
  def <<(obj); end
  def <=>(*args, &block); end
  def [](*args, &block); end
  def []=(*args, &block); end
  def add(*filenames); end
  def all?(*args, &block); end
  def any?(*args, &block); end
  def append(*args, &block); end
  def assoc(*args, &block); end
  def at(*args, &block); end
  def bsearch(*args, &block); end
  def bsearch_index(*args, &block); end
  def chain(*args, &block); end
  def chunk(*args, &block); end
  def chunk_while(*args, &block); end
  def clear(*args, &block); end
  def collect(*args, &block); end
  def collect!(*args, &block); end
  def collect_concat(*args, &block); end
  def combination(*args, &block); end
  def compact(*args, &block); end
  def compact!(*args, &block); end
  def compact_blank(*args, &block); end
  def compact_blank!(*args, &block); end
  def concat(*args, &block); end
  def count(*args, &block); end
  def cycle(*args, &block); end
  def deconstruct(*args, &block); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def detect(*args, &block); end
  def difference(*args, &block); end
  def dig(*args, &block); end
  def drop(*args, &block); end
  def drop_while(*args, &block); end
  def each(*args, &block); end
  def each_cons(*args, &block); end
  def each_entry(*args, &block); end
  def each_index(*args, &block); end
  def each_slice(*args, &block); end
  def each_with_index(*args, &block); end
  def each_with_object(*args, &block); end
  def empty?(*args, &block); end
  def entries(*args, &block); end
  def exclude(*patterns, &block); end
  def exclude?(*args, &block); end
  def excluded_from_list?(filename); end
  def excluding(*args, &block); end
  def extract!(*args, &block); end
  def extract_options!(*args, &block); end
  def fetch(*args, &block); end
  def fifth(*args, &block); end
  def fill(*args, &block); end
  def filter(*args, &block); end
  def filter!(*args, &block); end
  def filter_map(*args, &block); end
  def find(*args, &block); end
  def find_all(*args, &block); end
  def find_index(*args, &block); end
  def first(*args, &block); end
  def flat_map(*args, &block); end
  def flatten(*args, &block); end
  def flatten!(*args, &block); end
  def forty_two(*args, &block); end
  def fourth(*args, &block); end
  def from(*args, &block); end
  def grep(*args, &block); end
  def grep_v(*args, &block); end
  def group_by(*args, &block); end
  def in_groups(*args, &block); end
  def in_groups_of(*args, &block); end
  def in_order_of(*args, &block); end
  def include(*filenames); end
  def include?(*args, &block); end
  def including(*args, &block); end
  def index(*args, &block); end
  def index_by(*args, &block); end
  def index_with(*args, &block); end
  def inject(*args, &block); end
  def inquiry(*args, &block); end
  def insert(*args, &block); end
  def inspect(*args, &block); end
  def intersect?(*args, &block); end
  def intersection(*args, &block); end
  def join(*args, &block); end
  def keep_if(*args, &block); end
  def last(*args, &block); end
  def lazy(*args, &block); end
  def length(*args, &block); end
  def many?(*args, &block); end
  def map(*args, &block); end
  def map!(*args, &block); end
  def max(*args, &block); end
  def max_by(*args, &block); end
  def maximum(*args, &block); end
  def member?(*args, &block); end
  def min(*args, &block); end
  def min_by(*args, &block); end
  def minimum(*args, &block); end
  def minmax(*args, &block); end
  def minmax_by(*args, &block); end
  def none?(*args, &block); end
  def one?(*args, &block); end
  def pack(*args, &block); end
  def permutation(*args, &block); end
  def pick(*args, &block); end
  def place(*args, &block); end
  def pluck(*args, &block); end
  def pop(*args, &block); end
  def prepend(*args, &block); end
  def product(*args, &block); end
  def push(*args, &block); end
  def rassoc(*args, &block); end
  def reduce(*args, &block); end
  def reject(*args, &block); end
  def reject!(*args, &block); end
  def repeated_combination(*args, &block); end
  def repeated_permutation(*args, &block); end
  def replace(*args, &block); end
  def resolve; end
  def reverse(*args, &block); end
  def reverse!(*args, &block); end
  def reverse_each(*args, &block); end
  def rindex(*args, &block); end
  def rotate(*args, &block); end
  def rotate!(*args, &block); end
  def sample(*args, &block); end
  def second(*args, &block); end
  def second_to_last(*args, &block); end
  def select(*args, &block); end
  def select!(*args, &block); end
  def shelljoin(*args, &block); end
  def shift(*args, &block); end
  def shuffle(*args, &block); end
  def shuffle!(*args, &block); end
  def size(*args, &block); end
  def slice(*args, &block); end
  def slice!(*args, &block); end
  def slice_after(*args, &block); end
  def slice_before(*args, &block); end
  def slice_when(*args, &block); end
  def sole(*args, &block); end
  def sort(*args, &block); end
  def sort!(*args, &block); end
  def sort_by(*args, &block); end
  def sort_by!(*args, &block); end
  def split(*args, &block); end
  def sum(*args, &block); end
  def take(*args, &block); end
  def take_while(*args, &block); end
  def tally(*args, &block); end
  def third(*args, &block); end
  def third_to_last(*args, &block); end
  def to(*args, &block); end
  def to_a; end
  def to_default_s(*args, &block); end
  def to_formatted_s(*args, &block); end
  def to_fs(*args, &block); end
  def to_h(*args, &block); end
  def to_msgpack(*args, &block); end
  def to_s; end
  def to_sentence(*args, &block); end
  def to_set(*args, &block); end
  def to_xml(*args, &block); end
  def transpose(*args, &block); end
  def union(*args, &block); end
  def uniq(*args, &block); end
  def uniq!(*args, &block); end
  def unshift(*args, &block); end
  def values_at(*args, &block); end
  def without(*args, &block); end
  def zip(*args, &block); end
  def |(*args, &block); end

  private

  def add_matching(pattern); end
  def resolve_add(filename); end
  def resolve_exclude; end

  class << self
    def glob(pattern, *args); end
  end
end

Rufo::FileList::ARRAY_METHODS = T.let(T.unsafe(nil), Array)
Rufo::FileList::DEFAULT_IGNORE_PATTERNS = T.let(T.unsafe(nil), Array)
Rufo::FileList::DEFAULT_IGNORE_PROCS = T.let(T.unsafe(nil), Array)
Rufo::FileList::DELEGATING_METHODS = T.let(T.unsafe(nil), Array)
Rufo::FileList::GLOB_PATTERN = T.let(T.unsafe(nil), Regexp)
Rufo::FileList::MUST_DEFINE = T.let(T.unsafe(nil), Array)
Rufo::FileList::MUST_NOT_DEFINE = T.let(T.unsafe(nil), Array)
Rufo::FileList::SPECIAL_RETURN = T.let(T.unsafe(nil), Array)

class Rufo::Formatter
  include ::Rufo::Settings

  def initialize(code, **options); end

  def adjust_other_alignments(scope, line, column, offset); end
  def bug(msg); end
  def capture_output; end
  def check(kind); end
  def check_heredocs_in_literal_elements(is_last, wrote_comma); end
  def comma?; end
  def comment?; end
  def consume_block_args(args); end
  def consume_call_dot; end
  def consume_embedded_comment; end
  def consume_end; end
  def consume_end_of_line(at_prefix: T.unsafe(nil), want_semicolon: T.unsafe(nil), want_multiline: T.unsafe(nil), needs_two_lines_on_comment: T.unsafe(nil), first_space: T.unsafe(nil)); end
  def consume_keyword(value); end
  def consume_op(value); end
  def consume_op_or_keyword; end
  def consume_space(want_preserve_whitespace: T.unsafe(nil)); end
  def consume_space_after_command_name; end
  def consume_space_or_newline; end
  def consume_token(kind); end
  def consume_token_value(value); end
  def current_comment_aligned_to_previous_one?; end
  def current_token; end
  def current_token_column; end
  def current_token_kind; end
  def current_token_line; end
  def current_token_value; end
  def declaration?(exp); end
  def dedent_calls; end
  def do_align(components, scope); end
  def do_align_case_when; end
  def empty_body?(body); end
  def empty_params?(node); end
  def find_closing_brace_token; end
  def flush_heredocs; end
  def format; end
  def format_simple_string(node); end
  def indent(value = T.unsafe(nil)); end
  def indent_after_space(node, sticky: T.unsafe(nil), want_space: T.unsafe(nil), needed_indent: T.unsafe(nil), token_column: T.unsafe(nil), base_column: T.unsafe(nil)); end
  def indent_body(exps, force_multiline: T.unsafe(nil)); end
  def indent_literals; end
  def indentable_value?(value); end
  def keyword?(keyword); end
  def last?(index, array); end
  def maybe_indent(toggle, indent_size); end
  def need_space_for_hash?(node, closing_brace_token); end
  def needs_two_lines?(exp); end
  def newline?; end
  def next_indent; end
  def next_token; end
  def next_token_no_heredoc_check; end
  def node_line(node, beginning: T.unsafe(nil)); end
  def push_call(node); end
  def push_hash(node); end
  def push_node(node); end
  def push_type(node); end
  def quote_char; end
  def remove_lines_before_inline_declarations; end
  def result; end
  def semicolon?; end
  def should_format_string?(string); end
  def simple_string(node); end
  def skip_ignored_space; end
  def skip_semicolons; end
  def skip_space; end
  def skip_space_backslash; end
  def skip_space_no_heredoc_check; end
  def skip_space_or_newline(_want_semicolon: T.unsafe(nil), write_first_semicolon: T.unsafe(nil)); end
  def skip_space_or_newline_using_setting(setting, indent_size = T.unsafe(nil)); end
  def space?; end
  def to_ary(node); end
  def track_alignment(key, target, offset = T.unsafe(nil), id = T.unsafe(nil)); end
  def track_assignment(offset = T.unsafe(nil)); end
  def track_case_when; end
  def track_comment(id: T.unsafe(nil), match_previous_id: T.unsafe(nil)); end
  def visit(node); end
  def visit_alias(node); end
  def visit_args_add_star(node); end
  def visit_array(node); end
  def visit_array_access(node); end
  def visit_array_getter_or_setter(name, args); end
  def visit_array_setter(node); end
  def visit_assign(node); end
  def visit_assign_value(value); end
  def visit_begin(node); end
  def visit_begin_node(node); end
  def visit_begin_or_end(node, keyword); end
  def visit_binary(node); end
  def visit_block_arguments(node); end
  def visit_bodystmt(node); end
  def visit_brace_block(node); end
  def visit_break(node); end
  def visit_call_args(node); end
  def visit_call_at_paren(node, args); end
  def visit_call_with_block(node); end
  def visit_call_with_receiver(node); end
  def visit_call_without_receiver(node); end
  def visit_case(node); end
  def visit_class(node); end
  def visit_comma_separated_list(nodes, needs_indent: T.unsafe(nil), base_column: T.unsafe(nil)); end
  def visit_command(node); end
  def visit_command_args(args, base_column); end
  def visit_command_call(node); end
  def visit_command_end(node, args, base_column); end
  def visit_control_keyword(node, keyword); end
  def visit_def(node); end
  def visit_def_from_name(name, params, body); end
  def visit_def_with_receiver(node); end
  def visit_defined(node); end
  def visit_do_block(node); end
  def visit_end_node(node); end
  def visit_exps(exps, with_indent: T.unsafe(nil), with_lines: T.unsafe(nil), want_trailing_multiline: T.unsafe(nil)); end
  def visit_for(node); end
  def visit_hash(node); end
  def visit_hash_key_value(node); end
  def visit_if(node); end
  def visit_if_or_unless(node, keyword, check_end: T.unsafe(nil)); end
  def visit_kwrest_param(node); end
  def visit_lambda(node); end
  def visit_literal_elements(elements, token_column:, inside_hash: T.unsafe(nil), inside_array: T.unsafe(nil)); end
  def visit_mlhs(node); end
  def visit_mlhs_add_star(node); end
  def visit_mlhs_or_mlhs_paren(args); end
  def visit_mlhs_paren(node); end
  def visit_module(node); end
  def visit_mrhs_add_star(node); end
  def visit_mrhs_new_from_args(node); end
  def visit_multiple_assign(node); end
  def visit_next(node); end
  def visit_op_assign(node); end
  def visit_params(node); end
  def visit_paren(node); end
  def visit_path(node); end
  def visit_q_or_i_array(node); end
  def visit_quoted_symbol_literal(node); end
  def visit_range(node, inclusive); end
  def visit_regexp_literal(node); end
  def visit_rescue_types(node); end
  def visit_rest_param(node); end
  def visit_return(node); end
  def visit_sclass(node); end
  def visit_setter(node); end
  def visit_splat_inside_hash(node); end
  def visit_string_concat(node); end
  def visit_string_dvar(node); end
  def visit_string_interpolation(node); end
  def visit_string_literal(node); end
  def visit_string_literal_end(node); end
  def visit_suffix(node, suffix); end
  def visit_super(node); end
  def visit_symbol(node); end
  def visit_symbol_literal(node); end
  def visit_ternary_if(node); end
  def visit_unary(node); end
  def visit_undef(node); end
  def visit_unless(node); end
  def visit_until(node); end
  def visit_when(node); end
  def visit_while(node); end
  def visit_while_or_until(node, keyword); end
  def visit_yield(node); end
  def void_exps?(node); end
  def with_unmodifiable_string_lines; end
  def write(value); end
  def write_indent(indent = T.unsafe(nil)); end
  def write_line; end
  def write_params_comma; end
  def write_space(value = T.unsafe(nil)); end
  def write_space_using_setting(first_space, setting, at_least_one: T.unsafe(nil)); end

  class << self
    def format(code, **options); end
  end
end

Rufo::Formatter::EMPTY_HASH = T.let(T.unsafe(nil), Array)
Rufo::Formatter::EMPTY_STRING = T.let(T.unsafe(nil), Array)
Rufo::Formatter::INDENT_SIZE = T.let(T.unsafe(nil), Integer)

class Rufo::Logger
  def initialize(level); end

  def debug(*args); end
  def error(*args); end
  def log(*args); end
  def warn(*args); end

  private

  def level; end
  def should_output?(level_to_check); end
end

Rufo::Logger::LEVELS = T.let(T.unsafe(nil), Hash)

class Rufo::Parser < ::Ripper
  def compile_error(msg); end
  def on_parse_error(msg); end
end

module Rufo::Settings
  def align_case_when; end
  def align_case_when=(_arg0); end
  def align_chained_calls; end
  def align_chained_calls=(_arg0); end
  def excludes; end
  def excludes=(_arg0); end
  def includes; end
  def includes=(_arg0); end
  def init_settings(options); end
  def parens_in_def; end
  def parens_in_def=(_arg0); end
  def quote_style; end
  def quote_style=(_arg0); end
  def trailing_commas; end
  def trailing_commas=(_arg0); end
end

Rufo::Settings::OPTIONS = T.let(T.unsafe(nil), Hash)

class Rufo::SyntaxError < ::StandardError
  def initialize(message, lineno); end

  def lineno; end
end

class Rufo::UnknownSyntaxError < ::StandardError; end
Rufo::VERSION = T.let(T.unsafe(nil), String)