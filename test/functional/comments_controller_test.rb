require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end
=begin
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end
=end
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post.id, comment: @comment.attributes
    end

    assert_redirected_to post_path(assigns(:post))
    assert_equal 'Comment was successfully created!', flash[:notice]
  end
=begin
  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment" do
    put :update, id: @comment, comment: { body: @comment.body, post_id: @comment.post_id }
    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end
=end
end
