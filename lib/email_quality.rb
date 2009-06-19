$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'email_quality/validatability'
require 'email_quality/blacklist'
require 'email_quality/config'
require 'email_quality/domain'
require 'email_quality/address'
  
module EmailQuality
  VERSION = '0.0.1'
  class Error < StandardError; end
  class MalformedEmailAddressError < Error; end
end