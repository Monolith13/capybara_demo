# capybara_demo
This is demo project with capybara framework(test engine) + allure framework(report) + cucumber (BDD). 

## How launch test 
1. Install [RVM](https://rvm.io)
2. Install ruby via RVM:
   ```
   rvm install ruby 2.4.2
   rvm use --default ruby 2.4.2
   ```
3. Install bundler gem:
   ```
   gem install bundler
   ```
4. Install required gems:
   ```
   cd ~/capybara_demo/
   bundle install
   ```
5. Download and launch [standalone-chrome](https://hub.docker.com/r/selenium/standalone-chrome/) or [standalone-firefox](https://hub.docker.com/r/selenium/standalone-firefox/) docker's image:
   ```
   sudo docker pull selenium/standalone-firefox
   sudo docker run -d -P selenium/standalone-firefox
   ```     
6. Set your URL to **$host** variable in **env.rb**.
7. Install [Allure commandline](https://docs.qameta.io/allure/latest/#_installing_a_commandline) 
8. Launch shell script:
   ```
   cd ~/capybara_demo/
   sh start.sh
   ```     

## Useful links
* [Capybara](https://github.com/teamcapybara/capybara) 
* [Allure framework](https://github.com/allure-framework)
* [Docker](https://www.docker.com)
* [Cucumber](https://github.com/cucumber/cucumber-ruby)