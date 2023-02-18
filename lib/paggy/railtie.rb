module Paggy
  class Railtie < ::Rails::Railtie
    initializer "paggy.controller" do
      ActiveSupport.on_load :action_controller_base do
       ActionController::Base.send :include, Paggy::Controller
      end
       
    end
  end
end

