# README

### To set up from start follow `https://github.com/samvera/hyrax/wiki/Configuring-an-OS-X-Samvera-Dev-Environment`


###Browse everyting 
 - This Gem allows your rails application to access user files from cloud storage. Currently there are drivers implemented for Dropbox, Google Drive, Box, Amazon S3, and a server-side directory share.
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

###TODO /ISSUES:
- The thumbnail url is not proper in the related work attribute on the work page.
- Add sidekiq
- Bulk work upload is failing
- Delete on one work should delete the link to itself in other works.(a work around is done)

