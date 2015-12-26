require "json_answer_contract/version"
require 'active_support/dependencies/autoload'

require 'json_answer_contract/railtie'

module JsonAnswerContract
  extend ActiveSupport::Autoload

  module Controller
    extend ActiveSupport::Autoload

    autoload :Helper
  end
end
