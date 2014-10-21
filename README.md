# Asynchronous File Uploader/Converter

A simple project I put together to demo asynchronous uploading and converting of images, originally run on a RaspberryPi.

## Setup

Please note, the following setup instructions are for Linux (Ubuntu) and will vary on other systems.

1. Clone the repository
2. Ensure you have mysql installed and set up
3. Add the user 'dev' with the password 'dev'
4. Either give the user 'dev' createdb permissions, or create the database and give him permissions to use it
5. Install nodejs

    $ sudo apt-get install nodejs

6. Install imagemagick

    $ sudo apt-get install imagemagick

7. Run `bundle install`    
    
8. Update the crontab via whenever

    $ whenever --update-crontab file-uploader-converter
    $ whenever -w

9. Run `rake db:setup`

The project should now be set up and ready to go.

## Usage

Run
 
    $ rails s

to start the server. You should then be able to access the site at `localhost:3000` in your web browser.