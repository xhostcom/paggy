require 'application_system_test_case'

class Paggy::IntegrationTest < ApplicationSystemTestCase
test "recordings are paginated" do
    visit root_path

    within "#recordings" do
    assert_selector "div", count: Paggy::Page::PER_PAGE
    end

    click_on "Next" 
    within "#recordings" do
    assert_selector "div", count: 20
    end
end
end