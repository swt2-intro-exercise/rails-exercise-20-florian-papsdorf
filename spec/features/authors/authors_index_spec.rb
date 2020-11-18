# frozen_string_literal: true

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
    visit authors_path
    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
    expect(page).to have_link 'Show', href: author_path(@alan)
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end

  it 'should delete author after clicking delete link' do
    @alan = FactoryBot.create :author
    count_before = Author.count
    visit authors_path
    click_link('Delete')
    expect(Author.count).to be == count_before - 1
  end

  it 'should display a link to add new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
