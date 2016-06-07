require 'test_helper'

class ModernQuotesControllerTest < ActionController::TestCase
  setup do
    @modern_quote = modern_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modern_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modern_quote" do
    assert_difference('ModernQuote.count') do
      post :create, modern_quote: {  }
    end

    assert_redirected_to modern_quote_path(assigns(:modern_quote))
  end

  test "should show modern_quote" do
    get :show, id: @modern_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modern_quote
    assert_response :success
  end

  test "should update modern_quote" do
    patch :update, id: @modern_quote, modern_quote: {  }
    assert_redirected_to modern_quote_path(assigns(:modern_quote))
  end

  test "should destroy modern_quote" do
    assert_difference('ModernQuote.count', -1) do
      delete :destroy, id: @modern_quote
    end

    assert_redirected_to modern_quotes_path
  end
end
