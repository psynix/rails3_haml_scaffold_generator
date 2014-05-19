module HamlRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy the defaults template to the application"
      source_root File.expand_path('../templates', __FILE__)
            
      def copy_controller_template        
        @haml_dir = "lib/generators/haml"
        copy_file File.expand_path('../templates/controller/controller_generator.rb', __FILE__), "#{@haml_dir}/controller/controller_generator.rb"
        copy_file File.expand_path('../templates/controller/templates/view.html.haml', __FILE__), "#{@haml_dir}/controller/templates/view.html.haml"
      end
      def copy_mailer_template      
        copy_file File.expand_path('../templates/mailer/mailer_generator.rb', __FILE__), "#{@haml_dir}/mailer/mailer_generator.rb"
        copy_file File.expand_path('../templates/mailer/templates/view.text.haml', __FILE__), "#{@haml_dir}/mailer/templates/view.text.haml"
      end
      def copy_scaffold_template
        copy_file File.expand_path('../templates/scaffold/scaffold_generator.rb', __FILE__), "#{@haml_dir}/scaffold/scaffold_generator.rb"
        copy_file File.expand_path('../templates/scaffold/templates/_form.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/_form.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/edit.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/edit.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/index.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/index.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/layout.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/layout.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/new.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/new.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/show.html.haml', __FILE__), "#{@haml_dir}/scaffold/templates/show.html.haml"
        copy_file File.expand_path('../templates/scaffold/templates/_form.html.haml', __FILE__), "lib/templates/haml/scaffold/templates/_form.html.haml"
      end
      def copy_base_file
        copy_file File.expand_path('../templates/base.rb', __FILE__), "#{@haml_dir}/base.rb"
      end
      def change_application_rb
        inject_into_file "config/application.rb", :after => "class Application < Rails::Application\n" do
          "    config.generators do |g|\n      g.template_engine :haml\n    end\n"
        end
      end
    end
  end
end