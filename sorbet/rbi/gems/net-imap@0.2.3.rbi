# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `net-imap` gem.
# Please instead update this file by running `bin/tapioca gem net-imap`.

class Net::IMAP < ::Net::Protocol
  include ::MonitorMixin
  include ::OpenSSL
  include ::OpenSSL::SSL
  extend ::Net::IMAP::Authenticators

  def initialize(host, port_or_options = T.unsafe(nil), usessl = T.unsafe(nil), certs = T.unsafe(nil), verify = T.unsafe(nil)); end

  def add_response_handler(handler = T.unsafe(nil), &block); end
  def append(mailbox, message, flags = T.unsafe(nil), date_time = T.unsafe(nil)); end
  def authenticate(auth_type, *args); end
  def capability; end
  def check; end
  def client_thread; end
  def client_thread=(_arg0); end
  def close; end
  def copy(set, mailbox); end
  def create(mailbox); end
  def delete(mailbox); end
  def disconnect; end
  def disconnected?; end
  def examine(mailbox); end
  def expunge; end
  def fetch(set, attr, mod = T.unsafe(nil)); end
  def getacl(mailbox); end
  def getquota(mailbox); end
  def getquotaroot(mailbox); end
  def greeting; end
  def id(client_id = T.unsafe(nil)); end
  def idle(timeout = T.unsafe(nil), &response_handler); end
  def idle_done; end
  def idle_response_timeout; end
  def list(refname, mailbox); end
  def login(user, password); end
  def logout; end
  def lsub(refname, mailbox); end
  def move(set, mailbox); end
  def namespace; end
  def noop; end
  def open_timeout; end
  def remove_response_handler(handler); end
  def rename(mailbox, newname); end
  def response_handlers; end
  def responses; end
  def search(keys, charset = T.unsafe(nil)); end
  def select(mailbox); end
  def setacl(mailbox, user, rights); end
  def setquota(mailbox, quota); end
  def sort(sort_keys, search_keys, charset); end
  def starttls(options = T.unsafe(nil), verify = T.unsafe(nil)); end
  def status(mailbox, attr); end
  def store(set, attr, flags); end
  def subscribe(mailbox); end
  def thread(algorithm, search_keys, charset); end
  def uid_copy(set, mailbox); end
  def uid_fetch(set, attr, mod = T.unsafe(nil)); end
  def uid_move(set, mailbox); end
  def uid_search(keys, charset = T.unsafe(nil)); end
  def uid_sort(sort_keys, search_keys, charset); end
  def uid_store(set, attr, flags); end
  def uid_thread(algorithm, search_keys, charset); end
  def unsubscribe(mailbox); end
  def xlist(refname, mailbox); end

  private

  def copy_internal(cmd, set, mailbox); end
  def create_ssl_params(certs = T.unsafe(nil), verify = T.unsafe(nil)); end
  def fetch_internal(cmd, set, attr, mod = T.unsafe(nil)); end
  def generate_tag; end
  def get_response; end
  def get_tagged_response(tag, cmd, timeout = T.unsafe(nil)); end
  def normalize_searching_criteria(keys); end
  def put_string(str); end
  def receive_responses; end
  def record_response(name, data); end
  def search_internal(cmd, keys, charset); end
  def send_command(cmd, *args, &block); end
  def send_data(data, tag = T.unsafe(nil)); end
  def send_list_data(list, tag = T.unsafe(nil)); end
  def send_literal(str, tag = T.unsafe(nil)); end
  def send_number_data(num); end
  def send_quoted_string(str); end
  def send_string_data(str, tag = T.unsafe(nil)); end
  def send_symbol_data(symbol); end
  def send_time_data(time); end
  def sort_internal(cmd, sort_keys, search_keys, charset); end
  def start_tls_session(params = T.unsafe(nil)); end
  def store_internal(cmd, set, attr, flags); end
  def tcp_socket(host, port); end
  def thread_internal(cmd, algorithm, search_keys, charset); end
  def validate_data(data); end

  class << self
    def debug; end
    def debug=(val); end
    def decode_utf7(s); end
    def default_imap_port; end
    def default_imaps_port; end
    def default_port; end
    def default_ssl_port; end
    def default_tls_port; end
    def encode_utf7(s); end
    def format_date(time); end
    def format_datetime(time); end
  end
end

Net::IMAP::ALL = T.let(T.unsafe(nil), Symbol)
Net::IMAP::ARCHIVE = T.let(T.unsafe(nil), Symbol)

class Net::IMAP::Atom
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end
end

module Net::IMAP::Authenticators
  def add_authenticator(auth_type, authenticator); end
  def authenticator(auth_type, *args); end

  private

  def authenticators; end
end

class Net::IMAP::BodyTypeAttachment < ::Struct
  def multipart?; end
end

class Net::IMAP::BodyTypeBasic < ::Struct
  def media_subtype; end
  def multipart?; end
end

class Net::IMAP::BodyTypeExtension < ::Struct
  def multipart?; end
end

class Net::IMAP::BodyTypeMessage < ::Struct
  def media_subtype; end
  def multipart?; end
end

class Net::IMAP::BodyTypeMultipart < ::Struct
  def media_subtype; end
  def multipart?; end
end

class Net::IMAP::BodyTypeText < ::Struct
  def media_subtype; end
  def multipart?; end
end

class Net::IMAP::ClientID
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end

  private

  def format_internal(client_id); end
  def validate_internal(client_id); end
end

class Net::IMAP::CramMD5Authenticator
  def initialize(user, password); end

  def process(challenge); end

  private

  def hmac_md5(text, key); end
end

Net::IMAP::DRAFTS = T.let(T.unsafe(nil), Symbol)

class Net::IMAP::DigestMD5Authenticator
  def initialize(user, password, authname = T.unsafe(nil)); end

  def process(challenge); end

  private

  def nc(nonce); end
  def qdval(k, v); end
end

Net::IMAP::HAS_CHILDREN = T.let(T.unsafe(nil), Symbol)
Net::IMAP::HAS_NO_CHILDREN = T.let(T.unsafe(nil), Symbol)
class Net::IMAP::IgnoredResponse < ::Struct; end
Net::IMAP::JUNK = T.let(T.unsafe(nil), Symbol)

class Net::IMAP::Literal
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end
end

class Net::IMAP::LoginAuthenticator
  def initialize(user, password); end

  def process(data); end
end

class Net::IMAP::MessageSet
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end

  private

  def format_internal(data); end
  def validate_internal(data); end
end

Net::IMAP::NONEXISTENT = T.let(T.unsafe(nil), Symbol)
class Net::IMAP::Namespace < ::Struct; end
class Net::IMAP::Namespaces < ::Struct; end

module Net::IMAP::NumValidator
  private

  def ensure_mod_sequence_value(num); end
  def ensure_number(num); end
  def ensure_nz_number(num); end
  def valid_mod_sequence_value?(num); end
  def valid_number?(num); end
  def valid_nz_number?(num); end

  class << self
    def ensure_mod_sequence_value(num); end
    def ensure_number(num); end
    def ensure_nz_number(num); end
    def valid_mod_sequence_value?(num); end
    def valid_number?(num); end
    def valid_nz_number?(num); end
  end
end

class Net::IMAP::PlainAuthenticator
  def initialize(username, password, authzid: T.unsafe(nil)); end

  def process(data); end
end

Net::IMAP::PlainAuthenticator::NULL = T.let(T.unsafe(nil), String)

class Net::IMAP::QuotedString
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end
end

Net::IMAP::REMOTE = T.let(T.unsafe(nil), Symbol)
Net::IMAP::RESPONSE_ERRORS = T.let(T.unsafe(nil), Hash)

class Net::IMAP::RawData
  def initialize(data); end

  def send_data(imap, tag); end
  def validate; end
end

class Net::IMAP::ResponseError < ::Net::IMAP::Error
  def initialize(response); end

  def response; end
  def response=(_arg0); end
end

class Net::IMAP::ResponseParser
  def initialize; end

  def parse(str); end

  private

  def accept(*args); end
  def accept_space; end
  def accept_spaces; end
  def address; end
  def address_list; end
  def astring; end
  def astring_chars; end
  def atom; end
  def body; end
  def body_data; end
  def body_ext_1part; end
  def body_ext_mpart; end
  def body_extension; end
  def body_extensions; end
  def body_fields; end
  def body_fld_dsp; end
  def body_fld_lang; end
  def body_fld_param; end
  def body_type_1part; end
  def body_type_attachment; end
  def body_type_basic; end
  def body_type_mixed; end
  def body_type_mpart; end
  def body_type_msg; end
  def body_type_text; end
  def capability_data; end
  def capability_response; end
  def case_insensitive_string; end
  def charset; end
  def charset_list; end
  def combine_adjacent(*tokens); end
  def continue_req; end
  def envelope; end
  def envelope_data; end
  def flag_list; end
  def flags_data; end
  def flags_response; end
  def format_string(str); end
  def getacl_response; end
  def getquota_response; end
  def getquotaroot_response; end
  def id_response; end
  def ignored_response; end
  def internaldate_data; end
  def list_response; end
  def lookahead; end
  def mailbox_list; end
  def match(*args, lex_state: T.unsafe(nil)); end
  def media_type; end
  def modseq_data; end
  def msg_att(n); end
  def namespace; end
  def namespace_response; end
  def namespace_response_extensions; end
  def namespaces; end
  def next_token; end
  def nil_atom; end
  def nstring; end
  def number; end
  def numeric_response; end
  def parse_error(fmt, *args); end
  def resp_text; end
  def resp_text_code; end
  def response; end
  def response_cond; end
  def response_tagged; end
  def response_untagged; end
  def rfc822_size; end
  def rfc822_text; end
  def search_response; end
  def section; end
  def shift_token; end
  def status_response; end
  def string; end
  def string_token?(token); end
  def text; end
  def text_response; end
  def thread_branch(token); end
  def thread_response; end
  def uid_data; end
end

Net::IMAP::ResponseParser::ASTRING_CHARS_TOKENS = T.let(T.unsafe(nil), Array)
Net::IMAP::ResponseParser::SPACES_REGEXP = T.let(T.unsafe(nil), Regexp)
Net::IMAP::SENT = T.let(T.unsafe(nil), Symbol)
Net::IMAP::SUBSCRIBED = T.let(T.unsafe(nil), Symbol)

module Net::IMAP::StringFormatter
  private

  def nstring(str); end
  def string(str); end
  def valid_nstring?(str); end
  def valid_string?(str); end

  class << self
    def nstring(str); end
    def string(str); end
    def valid_nstring?(str); end
    def valid_string?(str); end
  end
end

Net::IMAP::StringFormatter::LITERAL_REGEX = T.let(T.unsafe(nil), Regexp)
Net::IMAP::TRASH = T.let(T.unsafe(nil), Symbol)
class Net::IMAP::UnknownResponseError < ::Net::IMAP::ResponseError; end
Net::IMAP::VERSION = T.let(T.unsafe(nil), String)