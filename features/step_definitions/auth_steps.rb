Then(/^I see "(.*)" in the results$/) do |text|
  page.has_text? text
end

Given (/^I dont have anything$/) do
  # dummy step
end

When (/^I open some web site$/) do
  visit $host
end

When (/^I press "(.*)" button$/) do |label|
  find_button(label).click
end

When (/^I fill "(.*)" in "(.*)"$/) do |text, field_name|
  fill_in(field_name, with: text)
end

And (/^I make screenshot$/) do
  Report.attach_screenshot(path)
end
