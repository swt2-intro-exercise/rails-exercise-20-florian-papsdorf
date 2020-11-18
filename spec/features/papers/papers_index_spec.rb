require 'rails_helper'

describe 'Papers index page' do
  it 'should only display papers of sample year' do
    @paper = FactoryBot.create :paper
    visit papers_path(year: 2)
    expect(page).to_not have_text(@paper.title)
  end
  it 'should display all papers' do
    @paper = FactoryBot.create :paper
    visit papers_path
    expect(page).to have_text(@paper.title)
  end
end
