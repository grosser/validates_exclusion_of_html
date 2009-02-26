require File.join(File.dirname(__FILE__),'spec_helper')

require 'acts_as_fu'
build_model :users do
  string :name
  validates_exclusion_of_html :name
end

describe :validates_exclusion_of_html do
  before do
    @user = User.new(:name=>'<a>evil!</a>')
  end

  it "makes records invalid" do
    @user.should_not be_valid
  end

  it "adds an error message to invalid objects" do
    @user.errors.should be_empty
    @user.valid?
    @user.errors[:name].should == "must not include &gt; or &lt;"
  end

  it "uses translation if available" do
    klas = ActiveRecord::Base
    def klas.s_(x)
      "X#{x}X"
    end
    @user.valid?
    @user.errors[:name].should == "Xmust not include &gt; or &lt;X"
  end

  it "does not mark valid records as invalid" do
    @user.name = 'not so evil'
    @user.should be_valid
  end
end