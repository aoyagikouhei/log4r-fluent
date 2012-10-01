require 'spec_helper'
describe Log4r::Fluent do
  it "initialize" do
    obj = Log4r::FluentOutputter.new("name")
    obj.tag.should == "test"
  end
  
  it "initialize with tag" do
    obj = Log4r::FluentOutputter.new("name", {tag: 'hi'})
    obj.tag.should == "hi"
  end
  
  it "logged" do
    obj = Log4r::FluentOutputter.new("name", {tag: 'hi'})
    logger = Log4r::Logger.new("name")
    logevent = Log4r::LogEvent.new(1, logger, nil, "test")
    obj.canonical_log(logevent)
  end
end