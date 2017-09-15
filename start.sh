#!/bin/bash --login
export PATH

# clear reports & screenshots
rm -rf allure && rm -rf allure-report && rm -rf screenshot/**

# update dependence
bundle update

# start tests
bundle exec cucumber -v -f AllureCucumber::Formatter --tags @auth -r features/support -r features/step_definitions

# copy environment.xml to report folder
cp ./environment.xml ./allure/environment.xml

# generate report (disable for launch from CI)
allure generate -c ./allure