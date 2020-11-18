require 'rails_helper'

describe 'New paper page' do
  it 'should be render without errors' do
    visit new_paper_path
  end

end
