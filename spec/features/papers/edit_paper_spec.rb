require 'rails_helper'

describe 'Edit paper pager' do
  it 'should allow to select paper authors from a multiple select box' do
    @paper = FactoryBot.create :paper
    @author1 = FactoryBot.create :author
    visit edit_paper_path(@paper)
    page.select @author1.name
    find('input[type="submit"]').click
    new_paper = Paper.find(@paper.id)
    expect(new_paper.authors).to include(@author1)
  end
end