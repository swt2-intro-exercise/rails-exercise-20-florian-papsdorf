require 'rails_helper'

describe 'Show authors index page', type: :feature do
  it 'should be render without error' do
    visit authors_path
  end

  it 'should show correct table headings' do
    visit authors_path
    expect(page).to have_text('Name')
    expect(page).to have_text('Homepage')
  end

  it 'should display correct information of authors' do
    @alan = FactoryBot.create :author
    FactoryBot.create :author
    visit authors_path
    expect(page).to have_text(@alan.name)
    expect(page).to have_link 'Show', href: author_path(@alan)
  end

  it 'should display a link to add new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
