class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.public_rooms
    @single_room = Room.find_by(id: params[:id])
    @users = User.all_except(current_user)
  end

  def create
    @room = Room.create(name: params["room"]["name"])
    redirect_to rooms_path
  end
end
