class BitsController < ApplicationController

  def index
    @bits = Bit.all
  end

  def show
    @bit = Bit.find(params[:id])
  end

  def new
  end

  def edit
  end
end
