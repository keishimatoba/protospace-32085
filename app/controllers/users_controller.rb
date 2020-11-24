class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @prototypes = Prototype.includes(:user)
    @prototypes =  @user.prototypes
  end
end
