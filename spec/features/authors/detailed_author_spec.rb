# frozen_string_literal: true

require 'rails_helper'

describe 'Show author page', type: :feature do
  it 'should be render without error' do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end
end

describe 'Show authors index page', type: :feature do
  it 'should be render without error' do
    visit authors_path
  end
end
