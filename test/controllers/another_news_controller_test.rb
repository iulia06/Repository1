require 'test_helper'

class AnotherNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @another_news = another_news(:one)
  end

  test "should get index" do
    get another_news_url
    assert_response :success
  end

  test "should get new" do
    get new_another_news_url
    assert_response :success
  end

  test "should create another_news" do
    assert_difference('AnotherNew.count') do
      post another_news_url, params: { another_news: {  } }
    end

    assert_redirected_to another_news_url(AnotherNew.last)
  end

  test "should show another_news" do
    get another_news_url(@another_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_another_news_url(@another_news)
    assert_response :success
  end

  test "should update another_news" do
    patch another_news_url(@another_news), params: { another_news: {  } }
    assert_redirected_to another_news_url(@another_news)
  end

  test "should destroy another_news" do
    assert_difference('AnotherNew.count', -1) do
      delete another_news_url(@another_news)
    end

    assert_redirected_to another_news_url
  end
end
