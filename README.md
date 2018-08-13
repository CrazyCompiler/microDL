# README

### To set up from start follow `https://github.com/samvera/hyrax/wiki/Configuring-an-OS-X-Samvera-Dev-Environment`


###Browse everyting 
 - This Gem allows your rails application to access user files from cloud storage while creating a eok and which will pull that file to the local Fedora. Currently there are drivers implemented for Dropbox, Google Drive, Box, Amazon S3, and a server-side directory share.
 - installation : Add this lines to your application's Gemfile:
                  
        gem 'jquery-rails'
        gem 'browse-everything'
 - And then execute:
   
        $ bundle
 - After installing the gem, run the generator
   
        $ rails g browse_everything:install
 - Include the CSS and JavaScript
    - Add @import "browse_everything"; to your application.css.scss
    - In app/assets/javascripts/application.js include jquery and the BrowseEverything

### External Storage Proxy, 
  - which is a tool to provide a common interface between Hyrax applications and multiple 3rd party storage services.
  
### storage_proxy_api
   - This gem provides a Ruby interface to the Camel-based External Storage Proxy
  
   - Add this line to your application's Gemfile:

          gem 'storage_proxy_api'
   - And then execute:

         $ bundle


###TODO /ISSUES:
- The thumbnail url is not proper in the related work attribute on the work page.
- Add sidekiq
- Bulk work upload is failing
- Delete on one work should delete the link to itself in other works.(a work around is done)

