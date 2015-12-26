require 'rails'

module JsonAnswerContract
  class Railtie < ::Rails::Railtie
    initializer "json_answer_contract.configure_controller" do |app|
      ActiveSupport.on_load :action_controller do
        include JsonAnswerContract::Controller::Helper
      end
    end
  end
end
