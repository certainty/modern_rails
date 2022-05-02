# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/better_html/all/better_html.rbi
#
# better_html-1.0.16

module BetterHtml
end
class BetterHtml::Config
  extend SmartProperties::ClassMethods
  include Anonymous_Module_44
  include SmartProperties
end
module Anonymous_Module_44
end
module BetterHtml::Helpers
end
class BetterHtml::InterpolatorError < RuntimeError
end
class BetterHtml::DontInterpolateHere < BetterHtml::InterpolatorError
end
class BetterHtml::UnsafeHtmlError < BetterHtml::InterpolatorError
end
class BetterHtml::HtmlError < RuntimeError
end
class BetterHtml::Errors < Array
end
class BetterHtml::HtmlAttributes
end
class BetterHtml::BetterErb
end
module BetterHtml::BetterErb::RuntimeChecks
end
class BetterHtml::BetterErb::ErubiImplementation < ActionView::Template::Handlers::ERB::Erubi
  include BetterHtml::BetterErb::RuntimeChecks
end
class BetterHtml::BetterErb::ValidatedOutputBuffer
end
class BetterHtml::BetterErb::ValidatedOutputBuffer::Context
end
module BetterHtml::BetterErb::ConditionalImplementation
end
class BetterHtml::Railtie < Rails::Railtie
end
