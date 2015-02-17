Pre-Requisite

    1.Ruby -v 2.0.0 and above
    2.Firefox Browser
    3.Chrome Browser Installed
        => Download the chromedriver from the link http://chromedriver.storage.googleapis.com/index.html?path=2.9/ and set to PATH in
        environment variables
=> Clone the project

=> Open command line and run "gem install bundler --source http://rubygems.org" (without quotes)

=> Open terminal navigate to the project cloned and run the command
        bundle install ( Will install all the required gem files that helps to execute the tests)

=> Executing the scripts on Firefox
         cucumber --tags @regression --format html --out regression.html BROWSER=firefox ( To run the tests in firefox browser)
         cucumber --tags @regression --format html --out regression.html BROWSER=chrome ( To run the tests in chrome browser)