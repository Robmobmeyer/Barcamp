require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end


  test "should get new" do
    get :new, conference_id: conferences(:one).id 
    assert_response :success
  end

  test "should create room" do

      assert_difference('Room.count') do
      post :create, room: { name: 'Neuer Raum', floor: '5 EG', seat: '15', conference_id: conferences(:one).id }, 
                    conference_id: conferences(:one).id
    end
    assert_redirected_to conference_room_path(:conference_id => conferences(:one).id, :id => Room.last.id)
  end

  test "should show room" do
    get :show, id: @room, conference_id: @room.conference_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room, conference_id: @room.conference_id
    assert_response :success
  end

  test "should update room" do
    put :update, id: @room, room: { name: @room.name, floor: @room.floor, seat: @room.seat }, 
                 conference_id: @room.conference_id

    assert_redirected_to conference_room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room, conference_id: @room.conference_id
    end

    assert_redirected_to conference_path(id: @room.conference_id)

  end
end
