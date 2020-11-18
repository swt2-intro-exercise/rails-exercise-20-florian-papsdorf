# frozen_string_literal: true

require 'rails_helper'

describe 'Paper details page' do
  it 'should list the authors' do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
    @paper.authors << @author
    visit paper_path(@paper)
    expect(page).to have_text(@author.name)
  end
end
