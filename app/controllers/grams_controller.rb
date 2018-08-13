class GramsController < ApplicationController
  def index
    @gram = Gram.new
  end

  def new

  end

  def create
    @gram = Gram.create(gram_params)
    redirect_to root_path
  end

  private

  def gram_params
    return params.require(:gram).permit(:message)
  end

end
