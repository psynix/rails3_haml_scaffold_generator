module HamlRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy the defaults template to the application"
      source_root File.expand_path('../templates', __FILE__)
      
      def create_default_folder_structure
        puts "Creating folders..."
        @haml_dir = "lib/templates/haml"
        Dir.mkdir("lib/templates") unless File.exists? "lib/templates"
        Dir.mkdir(@haml_dir) unless File.exists? @haml_dir
      end
      def copy_controller_template
        puts "Coping controllers templates"
        FileUtils.cp_r File.expand_path('../templates/controller', __FILE__), @haml_dir
      end
      def copy_mailer_template
        puts "Coping mailer templates"
        FileUtils.cp_r File.expand_path('../templates/mailer', __FILE__), @haml_dir
      end
      def copy_scaffold_template
        puts "Coping scaffold templates"
        FileUtils.cp_r File.expand_path('../templates/scaffold', __FILE__), @haml_dir
      end
      def print_usage
        puts "The Rails templates for haml was configured"
        puts "Don't forget to add the haml to your Gemfile"
        puts "Change your config/application.rb and add"
        puts "  config.generators do |g|               "
        puts "  g.template_engine :haml                "
        puts "  end                                    "
      end
    end
  end
end