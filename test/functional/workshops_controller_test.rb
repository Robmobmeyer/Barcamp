require 'test_helper'

class WorkshopsControllerTest < ActionController::TestCase

  setup do
    @workshop = workshops(:one)
  end

  test "should get new" do
    get :new, conference_id: conferences(:one).id 
    
    assert_response :success
  end

  test "should create workshop" do
    assert_difference('Workshop.count') do
      post :create, workshop: { name: 'Neuer Workshop', talker: 'Robin', conference_id: conferences(:one).id }, 
                    conference_id: conferences(:one).id
    end

    assert_redirected_to conference_workshop_path(:conference_id => conferences(:one).id, :id => Workshop.last.id)
  end 

  test "should show workshop" do
    get :show, id: @workshop, conference_id: @workshop.conference_id

    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workshop, conference_id: @workshop.conference_id

    assert_response :success
  end

  test "should update workshop" do
    put :update, id: @workshop, workshop: { name: @workshop.name, talker: @workshop.talker }, 
                 conference_id: @workshop.conference_id

    assert_redirected_to conference_workshop_path(assigns(:workshop))
  end

  test "should destroy workshop" do
    assert_difference('Workshop.count', -1) do
      delete :destroy, id: @workshop, conference_id: @workshop.conference_id
    end

    assert_redirected_to conference_path(id: @workshop.conference_id)
  end
end
