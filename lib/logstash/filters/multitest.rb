# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"

# This  filter will replace the contents of the default 
# message field with whatever you specify in the configuration.
#
# It is only intended to be used as an .
class LogStash::Filters::Multitest < LogStash::Filters::Base

  # Setting the config_name here is required. This is how you
  # configure this filter from your Logstash config.
  #
  # filter {
  #    {
  #     message => "My message..."
  #   }
  # }
  #
  config_name "multitest"
  
  # Replace the message with this value.
  config :message, :validate => :string, :default => "Hello World!"
  

  public
  def register
    # Add instance variables 
  end # def register

  public
  def filter(event)
    @logger.info('filter called') 
    filter_matched(event)
  end # def filter

  public
  def multi_filter(events)
    LogStash::Util.set_thread_plugin(self)
    @logger.info("multi_filter called, #{events.size} events")
    events
  end # def multi_filter

end # class LogStash::Filters::Multitest
