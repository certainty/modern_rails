# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/loofah/all/loofah.rbi
#
# loofah-2.17.0

module Loofah
  def self.document(*args, &block); end
  def self.fragment(*args, &block); end
  def self.remove_comments_before_html_element(doc); end
  def self.remove_extraneous_whitespace(string); end
  def self.scrub_document(string_or_io, method); end
  def self.scrub_fragment(string_or_io, method); end
  def self.scrub_xml_document(string_or_io, method); end
  def self.scrub_xml_fragment(string_or_io, method); end
  def self.xml_document(*args, &block); end
  def self.xml_fragment(*args, &block); end
end
module Loofah::MetaHelpers
  def self.add_downcased_set_members_to_all_set_constants(mojule); end
end
module Loofah::Elements
end
module Loofah::HTML5
end
module Loofah::HTML5::SafeList
end
module Loofah::LibxmlWorkarounds
end
module Loofah::HTML5::Scrub
  def self.allowed_element?(element_name); end
  def self.force_correct_attribute_escaping!(node); end
  def self.scrub_attributes(node); end
  def self.scrub_css(style); end
  def self.scrub_css_attribute(node); end
end
class Loofah::ScrubberNotFound < RuntimeError
end
class Loofah::Scrubber
  def append_attribute(node, attribute, value); end
  def block; end
  def direction; end
  def html5lib_sanitize(node); end
  def initialize(options = nil, &block); end
  def scrub(node); end
  def traverse(node); end
  def traverse_conditionally_bottom_up(node); end
  def traverse_conditionally_top_down(node); end
end
module Loofah::Scrubbers
  def self.scrubber_symbols; end
end
class Loofah::Scrubbers::Strip < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Prune < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Escape < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Whitewash < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NoFollow < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NoOpener < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NewlineBlockElements < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Unprintable < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
module Loofah::ScrubBehavior
  def self.resolve_scrubber(scrubber); end
end
module Loofah::ScrubBehavior::Node
  def scrub!(scrubber); end
end
module Loofah::ScrubBehavior::NodeSet
  def scrub!(scrubber); end
end
module Loofah::TextBehavior
  def inner_text(options = nil); end
  def text(options = nil); end
  def to_str(options = nil); end
  def to_text(options = nil); end
end
module Loofah::DocumentDecorator
  def initialize(*args, &block); end
end
module Loofah::XML
end
class Loofah::XML::Document < Nokogiri::XML::Document
  include Loofah::DocumentDecorator
  include Loofah::ScrubBehavior::Node
end
class Loofah::XML::DocumentFragment < Nokogiri::XML::DocumentFragment
  def self.parse(tags); end
end
module Loofah::HTML
end
class Loofah::HTML::Document < Nokogiri::HTML4::Document
  def serialize_root; end
  include Loofah::DocumentDecorator
  include Loofah::ScrubBehavior::Node
  include Loofah::TextBehavior
end
class Loofah::HTML::DocumentFragment < Nokogiri::HTML4::DocumentFragment
  def self.parse(tags, encoding = nil); end
  def serialize; end
  def serialize_root; end
  def to_s; end
  include Loofah::TextBehavior
end
