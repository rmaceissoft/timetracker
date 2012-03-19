require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdminConfirmUsers
end

module RailsAdmin
  module Config
    module Actions
      class ConfirmUsers < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection do
          true
        end

        register_instance_option :link_icon do
          'icon-check'
        end

        register_instance_option :controller do
          Proc.new do
            @objects.each do |user|
              user.confirm!
            end
          end
          flash[:notice] = "You have confimed for #{@objects.length} users."

          redirect_to back_or_index
        end
        
      end
    end
  end
end