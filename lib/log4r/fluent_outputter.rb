#coding: utf-8
require 'log4r/outputter/outputter'
require 'fluent-logger'

module Log4r
  class FluentOutputter < Log4r::Outputter
    attr_accessor :tag
  
    def initialize(_name, hash={})
      super(_name, hash)
      @tag = hash[:tag] ? hash[:tag] : 'test'
      host = hash[:host] ? hash[:host] : 'localhost'
      port = hash[:port] ? hash[:port].to_i : 24224
      ::Fluent::Logger::FluentLogger.open(nil, host: host, port: port)
    end
  
    def canonical_log(logevent)
      ::Fluent::Logger.post(@tag, {l: logevent.level, d: logevent.data})
    end
  end
end