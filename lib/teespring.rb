require "httparty"
Dir[File.dirname(__FILE__) + '/lib/teespring/*.rb'].each do |file|
  require file
end