require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  setup do
    @conference = conferences(:one)
    @update = {
      :name       => 'BARCAMP TEST',
      :organizer => 'ORGANIZER TEST',
      :room   => 1,
      :start_time       => '2013-11-17 10:31:00.000000',
      :start_date   => '1999-09-19',
      :session  => 'Session TEST'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference" do
    assert_difference('Conference.count') do
      #post :create, conference: { name: @conference.name, organizer: @conference.organizer, room: @conference.room, session: @conference.session, start_date: @conference.start_date, start_time: @conference.start_time }
      post :create, :conference => @update
    end

    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should show conference" do
    get :show, id: @conference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conference
    assert_response :success
  end

  test "should update conference" do
    put :update, id: @conference, conference: { name: @conference.name, organizer: @conference.organizer, room: @conference.room, session: @conference.session, start_date: @conference.start_date, start_time: @conference.start_time }
    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should destroy conference" do
    assert_difference('Conference.count', -1) do
      delete :destroy, id: @conference
    end

    assert_redirected_to conferences_path
  end
end
