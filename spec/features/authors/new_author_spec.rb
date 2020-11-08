# frozen_string_literal: true

require 'rails_helper'

describe 'New authors page', type: :feature do
  it 'should render without error' do
    visit new_author_path
  end

  it "should have text inputs for an authors's first name, last name, and homepage" do
    visit new_author_path

    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it 'should save given information to database' do
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Donald'
    page.fill_in 'author[last_name]', with: 'Duck'
    page.fill_in 'author[homepage]', with: 'www.donald-duck.de'
    find('input[type="submit"]').click
  end
end
