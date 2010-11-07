module HamlRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy the defaults template to the application"
      source_root File.expand_path('../templates', __FILE__)
      
      def create_default_folder_structure
        @haml_dir = "lib/templates/haml"
        Dir.mkdir("lib/templates") unless File.exists? "lib/templates"
        Dir.mkdir(@haml_dir) unless File.exists? @haml_dir
      end
      def copy_controller_template
        FileUtils.cp_r File.expand_path('../templates/controller', __FILE__), @haml_dir
      end
      def copy_mailer_template
        FileUtils.cp_r File.expand_path('../templates/mailer', __FILE__), @haml_dir
      end
      def copy_scaffold_template        
        FileUtils.cp_r File.expand_path('../templates/scaffold', __FILE__), @haml_dir
      end
    end
  end
end