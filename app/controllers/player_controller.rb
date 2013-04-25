class PlayerController < ApplicationController

def create
  @player = Player.new(params[:player], request.session_options[:id])
  @player.save
end



end
