#Before do
#    @Registro = Registro.new


#end

#After do |scenario|
#    scenario_name = scenario.name.gsub(/\s+/,'').tr('/','')
#    
#    if scenario.failed?
#        screenshot(scenario_name.downcase!, 'failed')
#    else
#        screenshot(scenario_name.downcase!, 'passed')
#    end
#end
#
#def screenshot(file_name, result)
#    file_path = "report/test_#{result}"
#    printscreen = "#{file_path}/#{file_name}.png"
#    page.save_screenshot(printscreen)
#    attach(printscreen, 'image/png')
#nd