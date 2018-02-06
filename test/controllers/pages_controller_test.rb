require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CoinLens"
  end

  test "should get root" do
    get pages_home_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get features" do
    get pages_features_url
    assert_response :success
    assert_select "title", "Features | #{@base_title}"
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
    assert_select "title", "FAQ | #{@base_title}"
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get register" do
    get pages_register_url
    assert_response :success
    assert_select "title", "Register | #{@base_title}"
  end

  test "should get login" do
    get pages_login_url
    assert_response :success
    assert_select "title", "Login | #{@base_title}"
  end

end
