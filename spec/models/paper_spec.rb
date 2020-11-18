# frozen_string_literal: true

require 'rails_helper'
require 'date'

RSpec.describe Paper, type: :model do
  it 'should not validate without title' do
    some_date = DateTime.new(2001, 2, 3, 4, 5, 6)
    wrong_paper = Paper.new({ venue: 'Leipzig', year: 2020, created_at: some_date, updated_at: some_date })
    expect(wrong_paper).to_not be_valid
  end
end