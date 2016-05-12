require 'test_helper'

class PlayersControllerTest < ActionController::TestCase

 test "should get index" do
   get :index
   assert_response :success
 end

 test "should get create" do
   post :create, player: {name: "Sam Hain", email: "fill.hey"}
   assert_redirected_to players_path
 end

 test "should get new" do
   get :new
   assert_response :success
 end

 test "should get update" do
   @player = players(:one)
   patch :update, id:@player, player: {name: "Sam Hain", email: "filler.hey"}
   assert_redirected_to player_path(assigns(:player))
 end

 test "should get show" do
   get :show, {'id' => players(:one).id}
   assert_response :success
 end

 test "should get destroy" do
   delete :destroy, {'id' => players(:one).id}
   assert_redirected_to players_path
 end

end