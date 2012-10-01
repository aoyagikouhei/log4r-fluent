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
end