# require 'test_helper'

# class StaticPagesControllerTest < ActionDispatch::IntegrationTest

#   def setup
#     @base_title = "Ruby on Rails Tutorial Sample App"
#   end

#   test "should get root" do
#     get root_url
#     assert_response :success
#   end

#   test "should get home" do
#     get static_pages_home_url
#     #getリクエストを受け付ける　get以下のURL 普通のWEBページであることを示す
#     assert_response :success
#     #assert_response　特定のHTTPリクエストを正常に返すかどうかのテスト
#     #引数にsuccessでレスポンスが200であるか確認　httpレスポンスが正常であるか確認
#     assert_select "title", "Home | #{@base_title}"
#     #HTMLタグの特定の要素内の内容を検証する
#   end

#   test "should get help" do
#     get static_pages_help_url
#     assert_response :success
#     assert_select "title", "Help | #{@base_title}"
#   end

#   test "should get about" do
#     get static_pages_about_url
#     assert_response :success
#     assert_select "title", "About | #{@base_title}"
#   end

# end

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end