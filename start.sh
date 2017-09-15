#!/bin/bash --login
export PATH

# Clear reports & screenshots
rm -rf allure && rm -rf allure-report && rm -rf screenshot/**

# Update dependence
bundle update

# Start tests
bundle exec cucumber -v -f AllureCucumber::Formatter --tags @auth -r features/support -r features/step_definitions

# Copy environment.xml to report folder
cp ./environment.xml ./allure/environment.xml

# Generate report (disable for launch from CI)
allure generate -c ./allure