class CheckoutsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @checkout = Checkout.new
  end

  def create
    @checkout = Checkout.new(params[:checkout])
    @checkout.user = current_user
    if @checkout.save
      flash[:notice] = "Checked out!"
      redirect_to root_path
    else
      render :new
    end
  end
end
