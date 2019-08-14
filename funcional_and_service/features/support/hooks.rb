After do |scenario|
    name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    take_screenshot(name.downcase!) if scenario.failed?
end