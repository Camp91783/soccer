require 'test_helper'

class TeamsControllerTest < ActionController::TestCase

 test "should get index" do
   get :index
   assert_response :success
 end

 test "should get create" do
   post :create, team: {name: "Chelsea"}
   assert_redirected_to teams_path
 end

 test "should get new" do
   get :new
   assert_response :success
 end

 test "should get update" do
   @team = teams(:one)
   patch :update, id:@team, team: {name: "Arsenal"}
   assert_redirected_to team_path(assigns(:team))
 end

 test "should get show" do
   get :show, {'id' => teams(:one).id}
   assert_response :success
 end

 test "should get destroy" do
   delete :destroy, {'id' => teams(:one).id}
   assert_redirected_to teams_path
 end

end
