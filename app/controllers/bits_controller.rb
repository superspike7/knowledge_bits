class BitsController < ApplicationController

  def index
    @bits = Bit.all
  end

  def show
    @bit = Bit.find(params[:id])
  end

  def new
    @bit = Bit.new
  end

  def edit
    @bit = Bit.find(params[:id])
  end

  def create
    @bit = Bit.new(bit_params)

    if @bit.save
      redirect_to @bit 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @bit = Bit.find(params[:id])

    if @bit.update(bit_params)
      redirect_to @bit
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def bit_params
    params.require(:bit).permit(:title, :author, :body)
  end
end
