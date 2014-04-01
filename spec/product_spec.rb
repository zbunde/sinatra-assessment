require 'spec_helper'
require 'capybara/rspec'
require_relative '../product'
Capybara.app = App

feature 'Adding a product' do
  scenario 'Adding a product to the homepage' do
    visit '/'
    expect(page).to have_content "Welcome"
    click_on "Add a Product"
    expect(page).to have_content "Add a Product"
    fill_in "product", with: "food"
    click_on "Create Product"
    expect(page).to have_content "food"
  end
end