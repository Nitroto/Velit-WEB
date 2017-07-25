require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contacts" do
    get pages_contacts_url
    assert_response :success
  end

  test "should get links" do
    get pages_links_url
    assert_response :success
  end

  test "should get partners" do
    get pages_partners_url
    assert_response :success
  end

  test "should get useful" do
    get pages_useful_url
    assert_response :success
  end

end
