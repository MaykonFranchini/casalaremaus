class ReadersController < ApplicationController
  def create
    @reader = Reader.new(reader_params)
    if @reader.save
      redirect_to root_path
    else
      render :contact
    end
  end

  private

  def reader_params
    params.require(:reader).permit(:name, :email)
  end
end
