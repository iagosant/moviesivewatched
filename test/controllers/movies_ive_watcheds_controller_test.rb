require 'test_helper'

class MoviesIveWatchedsControllerTest < ActionController::TestCase
  setup do
    @movies_ive_watched = movies_ive_watcheds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies_ive_watcheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movies_ive_watched" do
    assert_difference('MoviesIveWatched.count') do
      post :create, movies_ive_watched: { date: @movies_ive_watched.date, director: @movies_ive_watched.director, title: @movies_ive_watched.title }
    end

    assert_redirected_to movies_ive_watched_path(assigns(:movies_ive_watched))
  end

  test "should show movies_ive_watched" do
    get :show, id: @movies_ive_watched
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movies_ive_watched
    assert_response :success
  end

  test "should update movies_ive_watched" do
    patch :update, id: @movies_ive_watched, movies_ive_watched: { date: @movies_ive_watched.date, director: @movies_ive_watched.director, title: @movies_ive_watched.title }
    assert_redirected_to movies_ive_watched_path(assigns(:movies_ive_watched))
  end

  test "should destroy movies_ive_watched" do
    assert_difference('MoviesIveWatched.count', -1) do
      delete :destroy, id: @movies_ive_watched
    end

    assert_redirected_to movies_ive_watcheds_path
  end
end
