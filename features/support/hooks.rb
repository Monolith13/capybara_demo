include AllureCucumber::DSL

class Report
  def self.attach_screenshot(path, time)
    begin
      name = 'Screenshot ' + time
      attach_file(name, File.open(path))
    rescue
    end
  end
end