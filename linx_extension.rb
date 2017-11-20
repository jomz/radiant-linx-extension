# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-linx-extension"

class LinxExtension < Radiant::Extension
  version     RadiantLinxExtension::VERSION
  description RadiantLinxExtension::DESCRIPTION
  url         RadiantLinxExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config|
    # config is the Radiant.configuration object
  end

  def activate
    admin.layout.edit.add :form, 'usages', :after => :edit_title
    Admin::LayoutsController.class_eval do 
      helper Admin::NodeHelper
    end
    # tab 'Content' do
    #   add_item "Linx", "/admin/linx", :after => "Pages"
    # end
  end
end
