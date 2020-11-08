require 'rails_helper'

describe "Author model", type: :model do

  it "should have correct fields" do
    author = Author.new("Donald", "Duck", "www.donald-duck.com")
    expect(author.first_name).to eq("Donald")
    expect(author.last_name).to eq("Duck")
    expect(author.homepage).to eq("www.donald-duck.com")
    expect(author.first_name).to be_instance_of(String)
    expect(author.last_name).to be_instance_of(String)
    expect(author.homepage).to be_instance_of(String)
  end
end
