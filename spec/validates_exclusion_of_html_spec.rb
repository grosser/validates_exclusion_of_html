require File.join(File.dirname(__FILE__),'spec_helper')

ActiveRecord::Base.establish_connection({
  :adapter => "sqlite3",
  :database => ":memory:",
})

ActiveRecord::Schema.define(:version => 1) do
  create_table :users, :force=>true do |t|
    t.string :name, :title
    t.timestamps
  end
end

class User < ActiveRecord::Base
  validates_exclusion_of_html :name
  validates_exclusion_of_html :title, :message=>'custom'
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

  it "adds a custom message" do
    @user.title = '<script>fu</script>'
    @user.valid?
    @user.errors[:title].should == "custom"
  end

  it "does not mark valid records as invalid" do
    @user.name = 'not so evil'
    @user.should be_valid
  end
end