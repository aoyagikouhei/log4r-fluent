#coding: utf-8
require 'log4r/outputter/outputter'
require 'fluent-logger'

module Log4r
  class FluentOutputter < Log4r::Outputter
    VERSION = "0.0.3"
    attr_accessor :tag
    attr_accessor :log
  
    def initialize(_name, hash={})
      super(_name, hash)
      @tag = hash[:tag] || hash["tag"] || 'test'
      host = hash[:host] || hash["host"] || 'localhost'
      port = hash[:port] || hash["port"] || 24224
      @log = Fluent::Logger::FluentLogger.new(nil, host: host, port: port.to_i)
    end
  
    def canonical_log(logevent)
      @log.post(@tag, {l: logevent.level, d: logevent.data})
    end
  end
end