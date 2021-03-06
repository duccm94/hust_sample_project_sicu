class RelationshipsController < ApplicationController
    
  def create
    user = User.find(params[:relationship][:followed_id])
    if current_user.follow(user)
      redirect_to :back
    end
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to :back
  end
  private

end
