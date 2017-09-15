include AllureCucumber::DSL

class Report
  def self.attach_screenshot(path = 'screenshot')
    begin
      time = Time.now.hour.to_s + ':' + Time.now.min.to_s + ':' + Time.now.sec.to_s
      path = "screenshot/capybara_" + time + '.png'
      save_and_open_screenshot(path) #TODO - change to true method without opening
      attach_file('Screenshot', File.open(path))
    rescue
    end
  end
end