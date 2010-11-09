# Information about this fork

This for is no longer following the normal scaffolding layout of Rails.
It uses I18n backend for headings, model attributes names etc in it's views.

## Rails 3 HAML Scaffold Generator

Essentially just a copy of the Rails 3 ERB generator with HAML replacements for the templates.

Original idea from [Paul Barry's article on custom genrators][OriginalIdea]

### Installation

1. Generate your new rails application:

        rails new ApplicationName
        cd ApplicationName

2. Edit "Gemfile" and add "gem haml" and "gem haml_rails_" to the gem list
3. Either

        gem install haml
        gem install haml_rails

    ...or...

        bundle install

4. Run

        rails generate haml_rails:install
  
5. Create stuff with:

        rails generate controller ControllerName index
        rails generate mailer ExamplesNotifications
        rails generate scaffold FancyModel
    
    ... or if you like to mix it up with ERB, ignore step 5 and use ...

        rails generate haml:controller ControllerName index
        rails generate haml:mailer ExamplesNotifications
        rails generate haml:scaffold FancyModel


[OriginalIdea]: http://paulbarry.com/articles/2010/01/13/customizing-generators-in-rails-3
