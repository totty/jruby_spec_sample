# -*- coding: utf-8 -*-
require 'spec_helper'

module Sample
  include_package "sample"
end

describe Sample::Data, "Data の仕様" do
  before do
    @data = Sample::Data.new("test", "OK")
  end

  it "名前を持っている" do
    @data.should respond_to(:getName)
    @data.getName().should eql("test")
  end

  it "名前は変更できない" do
    @data.should_not respond_to(:setName)
  end

  it "セーブデータを持っている" do
    @data.should respond_to(:getSaveData)
    @data.getSaveData().should == "OK"
  end
end
