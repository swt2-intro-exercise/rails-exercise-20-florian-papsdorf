require 'rails_helper'

describe "Author model", type: :model do

  author = Author.new({:first_name => "Donald", :last_name => "Duck", :homepage => "www.donald-duck.com"})

  it "should have correct fields" do
    expect(author.first_name).to eq("Donald")
    expect(author.last_name).to eq("Duck")
    expect(author.homepage).to eq("www.donald-duck.com")
    expect(author.first_name).to be_instance_of(String)
    expect(author.last_name).to be_instance_of(String)
    expect(author.homepage).to be_instance_of(String)
  end

  it "should have a method name which returns the full name of an authors" do
    expect(author.name).to eq("Donald Duck")
  end

  it 'should not validate without last name' do
    wrong_author = Author.new({:first_name => "Donald", :homepage => "www.duck.de"})
    expect(wrong_author).to_not be_valid
  end
end
